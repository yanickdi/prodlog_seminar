from collections import deque

import lib
import generate_data_file

def get_matrix_and_stars():
    vienna = (48.219685, 16.382111)
    graz = (47.074990, 15.446288)
    bregenz = (47.503429, 9.743213)
    linz = (48.306904, 14.289620)
    all_cities = [vienna, graz, bregenz, linz]
    matrix = generate_data_file.calc_distance_matrix_from_point_list(all_cities)
    matrix = [[int(elem) for elem in line] for line in matrix]
    return matrix, (0,5,7,10)
    
class OrienteeringBranchAndBoundTree:
    def __init__(self, matrix, stars, limit):
        self._matrix = matrix
        self._stars = stars
        self._limit = limit
        self._root = self.Node(None, None, None)
        self._nr_vertices = len(matrix)
        self._all_vertices = set(range(len(matrix)))
        
    def start(self):
        queue = deque([self._root])
        while (len(queue) > 0):
            node = queue.pop()
            # todo: presolve node
            # todo: calculate lower bound at this node
            #if (node._vertex_length == 3):
            print(node)
            # branch at all child nodes and add each of them to our bfs queue:
            self._branch_at_node(node)
            for child in node._childs:
                queue.appendleft(child)
        
    def _branch_at_node(self, node):
        # at first, create all child nodes
        if node._parent == None:
            # it's the root node!
            for new_vertex in reversed(range(1, self._nr_vertices)):
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
                    child = self.Node(node, node._vertex_length, fixed)
                    node._childs.append(child)
                    
        
    class Node:
        def __init__(self, parent, vertex_length, fixed_at_start):
            self._parent = parent
            self._vertex_length = vertex_length
            self._fixed_at_start = fixed_at_start
            self._childs = []
            
        def __repr__(self):
            if self._parent is None:
                return 'ROOT'
            else:
                return ''.join(str(elem+1) for elem in self._fixed_at_start)  + 'x'*(self._vertex_length - len(self._fixed_at_start))

def greedy_start_solution(matrix, stars, limit):
    """ returns a simple start solution (nr. of stars we can collect)"""
    cum_kilometers = 0
    
    
    
def main():
    matrix, stars = get_matrix_and_stars()
    bnb = OrienteeringBranchAndBoundTree(matrix, stars, 1000)
    bnb.start()
    

if __name__ == '__main__':
    main()