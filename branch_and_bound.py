from collections import deque

import lib
    
class OrienteeringBranchAndBoundTree:
    def __init__(self, data):
        self._matrix = data['matrix']
        self._stars = data['star_list']
        self._limit = data['c_limit']
        self._root = self.Node(None, None, None)
        self._nr_vertices = len(self._matrix)
        self._all_vertices = set(range(len(self._matrix)))
        self._upper_bound = None
        self._best_solution = None
        self._nr_of_branch_nodes = 0
        
    def solve(self):
        self._calc_upper_bound()
        self._upper_bound -= 13
        count = 0
        queue = deque([self._root])
        while (len(queue) > 0):
            node = queue.pop()
            count += 1
            if count % 10000 == 0:
                print(count)
            shallBranch = True # default: branch (at root node e.g.)
            if node._parent != None:
                shallBranch = self._bound_at_node(node)
            
            if shallBranch:
                self._branch_at_node(node)
                for child in node._childs:
                    queue.appendleft(child)
        print('number of branch and bound nodes looked at:', count)

        
    def _bound_at_node(self, node):
        """calculates a lower bound for this node and decide if we should branch at this node
        Returns True if we shall branch - False if this node is not valid or its best solution would be worse
        than our actual best solution (the upper bound)"""
        if not self._is_node_possible(node):
            return False
            
        lower_bound = self._calc_lower_bound(node)
        if lower_bound > self._upper_bound * (1):
            # since we have a maximize problem
            return True
        else:
            return False
        
    def _calc_lower_bound(self, node):
        """ what would be the best solution ? --> maximum stars to fetch possible"""
        stars_so_far = sum(self._stars[i] for i in node._fixed_at_start)
        nr_of_nodes_left = node._vertex_length - len(node._fixed_at_start)
        if nr_of_nodes_left <= 0:
            # we are at a leaf - the lower bound is its actual value
            if stars_so_far > self._upper_bound:
                print('new best solution found', stars_so_far, node._node_id)
                print(node)
                self._upper_bound = stars_so_far
            return stars_so_far
        else:
            stars_possible = (i for i in range(self._nr_vertices) if i not in node._fixed_at_start)
            stars_possible = sorted(stars_possible, reverse=True)
            stars_possible = stars_possible[:nr_of_nodes_left]
            assert len(stars_possible) == nr_of_nodes_left
            return stars_so_far + sum(stars_possible)
            
    def _is_node_possible(self, node):
        # calculate the length already
        last_node = 0
        length_already = 0
        for next_node in node._fixed_at_start[1:]:
            length_already += self._matrix[last_node][next_node]
            last_node = next_node
        
        nr_of_nodes_left = node._vertex_length - len(node._fixed_at_start)
        if nr_of_nodes_left <= 0:
            last_node_nr = node._fixed_at_start[-1]
            length_already += self._matrix[last_node_nr][0]
        else:
            left_nodes = [i for i in range(1, self._nr_vertices) if i not in node._fixed_at_start]
            left_cols = [[self._matrix[i][j] for i in range(self._nr_vertices) if i != j] for j in left_nodes]
            left_col_minimas = (min(col) for col in left_cols)
            left_col_minimas = sorted(left_col_minimas)[:nr_of_nodes_left]
            best_case_left = sum(left_col_minimas)
            minimum_back = min(self._matrix[i][0] for i in left_nodes)
            
            length_already += best_case_left
            length_already += minimum_back
        return self._limit >= length_already
        
    def _branch_at_node(self, node):
        # at first, create all child nodes
        if node._parent == None:
            # it's the root node, calculate max_nr_of_nodes!
            max_nodes = self.calc_max_nr_of_nodes()
            for new_vertex in reversed(range(1, max_nodes)):
                child = self.Node(node, new_vertex+1, [0])
                node._childs.append(child)
        else:
            # it's a new branch - fix one more
            # but don't branch if all is fixed already:
            if node._vertex_length == len(node._fixed_at_start):
                return
            already_fixed_set = set(node._fixed_at_start)
            for new_vertex in range(1, self._nr_vertices):
                if new_vertex not in already_fixed_set:
                    fixed = node._fixed_at_start[:] + [new_vertex]
                    # check whether there is only one unfixed:
                    if len(fixed) == self._nr_vertices - 1 and node._vertex_length == self._nr_vertices:
                        # also add the last one to the fixed, because now it's clear!
                        fixed += list(self._all_vertices - set(fixed))
                    self._nr_of_branch_nodes += 1
                    child = self.Node(node, node._vertex_length, fixed, node_id=self._nr_of_branch_nodes)
                    node._childs.append(child)
                    
                
    def _calc_upper_bound(self):
        result = lib.greedy_nearest_neighbour_heuristic(
            {'matrix' : self._matrix, 'star_list': self._stars, 'c_limit': self._limit})
        self._upper_bound = result['stars']
        print(self._upper_bound)
        self._best_solution = result
            
        
    def calc_max_nr_of_nodes(self):
        # fetch the minimum of each row of the matrix
        minimum_back = min(self._matrix[0][j] for j in range(1, self._nr_vertices))
        minimas = []
        for i, line in enumerate(self._matrix):
            minimas.append(min( (elem for j, elem in enumerate(line) if j != i)))
        minimas.sort()
        
        cum = 0
        for i, elem in enumerate(minimas):
            cum += elem
            if cum + minimum_back > self._limit:
                return i+1
        return self._nr_vertices
                    
        
    class Node:
        def __init__(self, parent, vertex_length, fixed_at_start, node_id=-1):
            self._parent = parent
            self._vertex_length = vertex_length
            self._fixed_at_start = fixed_at_start
            self._childs = []
            self._node_id = node_id
            
        def __repr__(self):
            if self._parent is None:
                return 'ROOT'
            else:
                return '-'.join('{}'.format(elem+0) for elem in self._fixed_at_start)  + 'x'*(self._vertex_length - len(self._fixed_at_start))
    
    
def main():
    matrix, stars = get_matrix_and_stars()
    limit = 1100
    bnb = OrienteeringBranchAndBoundTree(matrix, stars, limit)
    #bnb.start()
    print(greedy_start_solution(matrix, stars, limit))
    

if __name__ == '__main__':
    main()