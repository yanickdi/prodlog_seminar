import unittest
import os
import sys

parent_path = os.path.dirname(os.path.realpath(__file__)) + '/../'
sys.path.append(parent_path)

from lib import read_xml_file
from lower_bound_gurobi import LowerBoundSolver

        
class TestLowerBoundGurobi(unittest.TestCase):
    def test_calc_lower_bound_gurobi(self):
        #data = read_xml_file('BundeslaenderTour_5_Knoten.xml')
        data = read_xml_file('../Instanzen/OesterreichTourC500.xml')
        solver = LowerBoundSolver(data)
        vertex_length = 7
        #fixed_at_start = [0, 3, 1, 19, 12, 20] #INFEASIBLE
        
        fixed_at_start = [0] #55
        solver.calc_lower_bound(vertex_length, fixed_at_start)
        
        fixed_at_start = [0, 3, 1, 19] #42
        solver.calc_lower_bound(vertex_length, fixed_at_start)
        
        fixed_at_start = [0, 3] #55
        solver.calc_lower_bound(vertex_length, fixed_at_start)

if __name__ == '__main__':
    test = TestLowerBoundGurobi()
    test.test_calc_lower_bound_gurobi()
