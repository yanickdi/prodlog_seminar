CSV_FILES = ['BundeslaenderTour.csv',
    'OesterreichTourC500.csv', 'OesterreichTourC1000.csv',
    'OesterreichTourC1000AllProfits1.csv', 'OesterreichTourC15000.csv']

WELTTOUR_FILE = 'Welttour.csv'
    
import os
import sys

parent_path = os.path.dirname(os.path.realpath(__file__)) + '/../'
sys.path.append(parent_path)
from lib import create_matrix, print_matrix, calculate_distance_matrix_from_gps, write_xml_file
from haversine import haversine


def read_csv_line(file):
    line = file.readline()
    if line == '': return None
    replacelist = [('ä', 'ae'), ('ü', 'ue'), ('ü', 'ue'), ('ö', 'oe'), ('é', 'e'), ('á', 'a')]
    reppythopythonpythlacelist = replacelist + [(t[0].upper(), t[1][0].upper()+t[1][1:]) for t in replacelist]
    #for repl, repl_with in replacelist:
        #line = line.replace(repl, repl_with)
    return line.strip().strip(';').split(';')
    
    
def read_matrix_and_stars_and_names(file):
    first_line = read_csv_line(file)
    n = len(first_line)
    names = []
    matrix = create_matrix(n, n)
    star_list = [None] * n
    for i in range(n):
        line = read_csv_line(file)
        # at line pos 0, there is the header of the line
        assert line[0] == first_line[i]
        names.append(line[0])
        for j in range(n):
            elem = float(line[j+1].replace(',', '.'))
            matrix[i][j] = elem
    # fetch the stars out of the diagonale:
    for i in range(n):
        star_list[i] = int(matrix[i][i])
        matrix[i][i] = 0.0
        
    return matrix, star_list, names
    
def readWeltTour(filename):
    data = {}
    with open(filename) as f:
        #first line name
        data['name'] = read_csv_line(f)[0]
        #second is c_limit
        data['c_limit'] = int(read_csv_line(f)[1])
        #earth radius
        earth_radius = float(read_csv_line(f)[1].replace(',', '.'))
        # now skip two lines
        f.readline(); f.readline()
        city_list = []
        while True:
            line = read_csv_line(f)
            if not line:
                break
            city = [line[0], (float(line[1].replace(',', '.')), float(line[2].replace(',', '.'))), line[3]]
            city_list.append(city)
        point_list = [city[1] for city in city_list]
        data['matrix'] = calculate_distance_matrix_from_gps(point_list, earth_radius)
        data['star_list'] = [city[2] for city in city_list]
        data['city_names'] = [city[0] for city in city_list]
        data['latlong'] = point_list
    return data
    
    
def main():
    for csv in CSV_FILES:
        data = {}
        with open(csv, 'r', encoding='utf-8') as f:
            data['name'] = read_csv_line(f)[0]
            data['c_limit'] = int(read_csv_line(f)[1])
            #empty line
            f.readline()
            data['matrix'], data['star_list'], data['city_names'] = read_matrix_and_stars_and_names(f)
        outfile = csv.replace('.csv', '.xml')
        write_xml_file(outfile, data)
        
    # and also for the welttour:
    data = readWeltTour(WELTTOUR_FILE)
    outfile = WELTTOUR_FILE.replace('.csv', '.xml')
    write_xml_file(outfile, data)
    return 0
    
if __name__ == '__main__':
    main()
