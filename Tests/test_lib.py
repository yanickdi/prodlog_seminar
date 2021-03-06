import unittest
import os
import sys

parent_path = os.path.dirname(os.path.realpath(__file__)) + '/../'
sys.path.append(parent_path)

from lib import create_matrix, print_matrix, calculate_distance_matrix_from_gps, \
    write_xml_file, read_xml_file, greedy_nearest_neighbour_heuristic, \
    calculate_distance_matrix_from_gps

class TestXml(unittest.TestCase):
    def test_read_xml_file(self):
        data = read_xml_file('../Instanzen/Welttour.xml')
        self.assertIsNotNone(data)
        matrix = data['matrix']
        self.assertEqual(len(matrix), 31)
        stars = data['star_list']
        self.assertEqual(stars[0], 0)
        self.assertTrue(sum(stars) > 0)
        
class TestGreedyHeuristic(unittest.TestCase):
    def test_greedy_nearest_neighbour_heuristic(self):
        data = self.create_test_instance()
        result = greedy_nearest_neighbour_heuristic(data)
        self.assertTrue(result['stars'] >= 15)
        self.assertTrue(result['length'] <= data['c_limit'])
        
    def test_greedy_on_bundeslaender_tour(self):
        data = read_xml_file('../Instanzen/BundeslaenderTour.xml')
        result = greedy_nearest_neighbour_heuristic(data)
        self.assertTrue(result['stars'] >= 13)
        
    def test_greedy_on_welt_tour(self):
        data = read_xml_file('../Instanzen/Welttour.xml')
        result = greedy_nearest_neighbour_heuristic(data)
        #check nodes of tour
        for node in result['tour']:
            if node == 0:
                self.assertEqual(result['tour'].count(node), 2)
            else:
                self.assertEqual(result['tour'].count(node), 1)
        #check tour limit
        self.assertTrue(result['length'] <= data['c_limit'])
        #check star limit
        self.assertTrue(result['stars'] <= sum(data['star_list']))
        print(result)
        
    def create_test_instance(self):
        vienna = (48.219685, 16.382111)
        graz = (47.074990, 15.446288)
        bregenz = (47.503429, 9.743213)
        linz = (48.306904, 14.289620)
        all_cities = [vienna, graz, bregenz, linz]
        matrix = calculate_distance_matrix_from_gps(all_cities)
        matrix = [[int(elem) for elem in line] for line in matrix]
        stars = [0, 5, 11, 10]
        return {'matrix' : matrix, 'c_limit' : 1000, 'star_list' : stars}

if __name__ == '__main__':
    unittest.main()