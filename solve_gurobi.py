import sys
from gurobipy import *
from lib import read_xml_file

class OrienteeringProblem(self, data):
    def __init__(self):
        self.data = data
        self.createModel()
        
    def createModel(self):
        model = Model()
        model.Params.OutputFlag = 0
            n, stars, matrix = len(data['matrix']), data['star_list'], data['matrix']

def main():
    data = read_xml_file('Instanzen/BundeslaenderTour.xml')

if __name__ == '__main__':
    main()
