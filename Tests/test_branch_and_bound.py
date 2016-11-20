import unittest
import os
import sys

parent_path = os.path.dirname(os.path.realpath(__file__)) + '/../'
sys.path.append(parent_path)

from lib import read_xml_file
from branch_and_bound import OrienteeringBranchAndBoundTree

        
class TestOrienteeringBranchAndBoundTree(unittest.TestCase):
    def test_maximum_nodes(self):
        #data = read_xml_file('BundeslaenderTour_5_Knoten.xml')
        data = read_xml_file('../Instanzen/BundeslaenderTour.xml')
        #data = read_xml_file('../Instanzen/OesterreichTourC500.xml')
        bnb = OrienteeringBranchAndBoundTree(data)
        bnb.solve()

if __name__ == '__main__':
    test = TestOrienteeringBranchAndBoundTree()
    test.test_maximum_nodes()