import sys
import datetime
from gurobipy import *
from lib import read_xml_file, greedy_nearest_neighbour_heuristic

class OrienteeringProblem():
    def __init__(self, data, debug=False):
        self.data = data
        self.n = len(data['matrix'])
        self.createModel(debug)
        
    def createModel(self, debug):
        ALPHA = 0.00001
        model = Model()
        model.Params.OutputFlag = 1 if debug else 0
        n, stars, matrix = len(self.data['matrix']), self.data['star_list'], self.data['matrix']
        # Create variables
        x = [[model.addVar(vtype=GRB.BINARY, ub=1.0, lb=0.0) for j in range(n)] for i in range(n)]
        y = [model.addVar(vtype=GRB.BINARY, ub=1.0, lb=0.0) for i in range(n)]
        u = [ model.addVar(vtype=GRB.CONTINUOUS)  for i in range(n)] # miller tucker vars
        model.update()
        # Set objective
        sum_y = [y[i]*stars[i] for i in range(n)]
        sum_tour_length = [x[i][j] * matrix[i][j] for i in range(n) for j in range(n)]
        model.setObjective(quicksum(sum_y) - ALPHA * quicksum(sum_tour_length), GRB.MAXIMIZE)
        # Constraints connect x and y's
        for j in range(n):
            expr = quicksum([x[i][j] for i in range(n)]) == y[j]
            model.addConstr(expr, 'spaltensumme_'+str(j))
        for i in range(n):
            expr = quicksum([x[i][j] for j in range(n)]) == y[i]
            model.addConstr(expr, 'zeilensumme_'+str(i))
        # Constraint for maximal travel distance:
        i_j_nested = ((i,j) for i in range(n) for j in range(n))
        expr = quicksum(x[i][j] * matrix[i][j] for i,j in i_j_nested) <= self.data['c_limit']
        model.addConstr(expr, 'max_travel_dist')
        # disallow diagonals:
        for i in range(n):
            model.addConstr(x[i][i] == 0)
        # depot must be part of the subtour!
        model.addConstr(y[0]== 1)
        # Miller Tucker Zemlin Constraints:
        [model.addConstr(2 <= u[i] <= self.n) for i in range(1, n)]
        [model.addConstr(u[i] - u[j] + 1 <= (self.n-1)*(1-x[i][j]))   for i in range(1, n) for j in range(1, n)]
        self.model = model
        self.x, self.y = x, y
        
    def solve(self):
        self.time_start = datetime.datetime.now()
        self.model.optimize()
        self.time_end = datetime.datetime.now()
        valid = False
        if self.model.status == GRB.Status.OPTIMAL:
            # Retrieve solution matrix
            self.solMatrix = [[0 for j in range(self.n)] for i in range(self.n)]
            for i in range(self.n):
                for j in range(self.n):
                    val = int(abs(self.x[i][j].X))
                    self.solMatrix[i][j] = val
            #self.visited_cities = [{i: int(var.X)} for i,var in enumerate(self.y)]
                    
        self.tour = self._test_solution_and_build_tour()
        if self.tour is not None:
            valid = True
        
        if not valid:
            if self.model.status == GRB.Status.INFEASIBLE:
                print('Tour is INFEASIBLE')
            else:
                print('Solver retrieved invalid tour')
        
        return valid
            
    def _test_solution_and_build_tour(self):
        cities = [int(y.X) for y in self.y]
        num_cities = sum(cities)
        # check subtour and build tour list
        act_city = 0
        tour = []
        for pos in range(num_cities):
            next_city = self.solMatrix[act_city].index(1)
            if next_city == 0 and pos != num_cities -1:
                return False
            tour.append((act_city, next_city))
            act_city = next_city
        return tour
    
    def getSolution(self):
        sol = {}
        sol['tour'] = self.tour
        sol['objective'] = self.model.objVal
        sol['visited_cities'] = [tup[0] for tup in self.tour]
        sol['stars_collected'] = sum([self.data['star_list'][city] for city in sol['visited_cities']])
        sol['tour_length'] = sum([self.data['matrix'][i][j] * int(self.x[i][j].X) for i in range(self.n) for j in range(self.n)])
        sol['solver_time'] = get_time_string(self.time_start, self.time_end)
        sol['greedy_tour'] = greedy_nearest_neighbour_heuristic(self.data)
        return sol

def main():
    #data = read_xml_file('Instanzen/BundeslaenderTour.xml')
    #data = read_xml_file('Instanzen/OesterreichTourC500.xml')
    #data = read_xml_file('Instanzen/OesterreichTourC15000.xml')
    data = read_xml_file('Instanzen/Welttour.xml')
    op = OrienteeringProblem(data, debug=False)
    # start optimization
    op.solve()
    # retrieve solution
    sol = op.getSolution()
    for key in sorted(sol):
        print('{} : {}'.format(key, sol[key]))
    
def get_time_string(start, end):
    delta = end - start
    seconds = delta.seconds
    milli_seconds = delta.microseconds / 1000
    minutes = seconds // 60
    hours = minutes // 60
    seconds = seconds % 60
    minutes = minutes % 60
    return('{}h {}min {}sek {}ms'.format(hours, minutes, seconds, milli_seconds))

if __name__ == '__main__':
    main()
