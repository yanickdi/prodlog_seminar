import unittest
import os
import sys

parent_path = os.path.dirname(os.path.realpath(__file__)) + '/../'
sys.path.append(parent_path)

from lib import create_matrix, print_matrix, calculate_distance_matrix_from_gps, write_xml_file, read_xml_file

class TestXml(unittest.TestCase):

    def test_read_xml_file(self):
        data = read_xml_file('../Instanzen/Welttour.xml')
        self.assertIsNotNone(data)

if __name__ == '__main__':
    unittest.main()