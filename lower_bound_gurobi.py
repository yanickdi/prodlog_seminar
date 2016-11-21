from gurobipy import *
import sys

class LowerBoundSolver:
    def __init__(self, data):
        #create the model
        self._create_model(data)
        
    def _create_model(self, data):
        model = Model("yanick_s model")
        model.Params.OutputFlag = 0
        n, stars, matrix = len(data['matrix']), data['star_list'], data['matrix']
        # Create variables
        x = [[model.addVar(vtype=GRB.CONTINUOUS, ub=1.0, lb=0.0) for j in range(n)] for i in range(n)]
        y = [model.addVar(vtype=GRB.CONTINUOUS, ub=1.0) for i in range(n)]
        #y = model.addVars(n, vtype=GRB.CONTINUOUS, ub=1.0, name="y")
        #x = model.addVars(n,n, vtype=GRB.CONTINUOUS, ub=1.0, lb=0.0, name="x")
        # Integrate new variables
        model.update()
        
        # Set objective
        sum_y = [y[i]*stars[i] for i in range(n)]
        model.setObjective(quicksum(sum_y), GRB.MAXIMIZE)
        # Constraints connect x and y's
        for j in range(n):
            expr = quicksum([x[i][j] for i in range(n)]) == y[j]
            model.addConstr(expr, 'spaltensumme_'+str(j))
        for i in range(n):
            expr = quicksum([x[i][j] for j in range(n)]) == y[i]
            model.addConstr(expr, 'zeilensumme_'+str(i))
        # Constraint for maximal travel distance:
        i_j_nested = ((i,j) for i in range(n) for j in range(n))
        expr = quicksum(x[i][j] * matrix[i][j] for i,j in i_j_nested) <= data['c_limit']
        model.addConstr(expr, 'max_travel_dist')
        # disallow diagonals:
        for i in range(n):
            model.addConstr(x[i][i] == 0)
        
        self._model = model
        self._x, self._y = x, y

    def calc_lower_bound(self, vertex_length, fixed_at_start):
        x, y = self._x, self._y
        # make constraints for already fixed positions:
        new_constraints = []
        actuals = fixed_at_start[:] + [0]
        predecessors = [0] + fixed_at_start[:]
        paths = list(zip(predecessors, actuals))[1:-1]
        for pre, actual in paths:
            new_con = self._model.addConstr(x[pre][actual] == 1)
            new_constraints.append(new_con)
        new_constraints.append(
            self._model.addConstr( quicksum([y[i] for i in range(len(y))]) <= vertex_length))
        
        
        self._model.optimize()
        # dont forget to remove our new constraints to not influence
        # next bound calculation
        for new_con in new_constraints:
            self._model.remove(new_con)
            
        if self._model.status == GRB.Status.OPTIMAL:
            #print('Optimal objective: %g' % self._model.objVal)
            return self._model.objVal
        else:# model.status == GRB.Status.INFEASIBLE:
            #print('Optimization was stopped with status %d' % self._model.status)
            return False
