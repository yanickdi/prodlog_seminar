AMPL_RUN_FILE = 'orientierung.run'
AMPL_DAT_FILE = 'test_instanz.dat'
NUMBER_OF_INSTANCES = 10
C_LIMIT = 1000

ALLOWED_GPS_RECTANGLE = [
    (9.393311, 49.005447),
    (16.534424, 46.630579)]


import sys
from lib import create_matrix, print_matrix, random_number_from_interval
from haversine import haversine

def create_random_gps_points(number, bound_north_east, bound_south_west):
    """creates some random gps points. a gps point is a tuple of (longitude, latitude).
    each point will be within a bounded gps rectangle where
    the north east point of the rectangle is `bound_north_east` """
    point_list = []
    long_min = min(bound_north_east[0], bound_south_west[0])
    long_max = max(bound_north_east[0], bound_south_west[0])
    lat_min = min(bound_north_east[1], bound_south_west[1])
    lat_max = max(bound_north_east[1], bound_south_west[1])
    for i in range(number):
        long = random_number_from_interval(long_min, long_max)
        lat = random_number_from_interval(lat_min, lat_max)
        gps_point = (long, lat)
        point_list.append(gps_point)
    return point_list
    
def calc_distance_matrix_from_point_list(point_list):
    n = len(point_list)
    matrix = create_matrix(n, n, default_value=0.0)
    for i in range(n):
        for j in range(n):
            matrix[i][j] = haversine(point_list[i], point_list[j])
    return matrix
    
def write_ampl_data_file(filename, matrix, star_list, c_limit):
    n = len(matrix)
    out = 'param n := {};\n\n'.format(n);
    out += 'param c:\n\n'
    out += '{} :=\n'.format(' '.join([str(i+1) for i in range(n)]))
    for i, line in enumerate(matrix):
        out += '{} {}\n'.format(i+1, ' '.join([str(round(elem, 2)) if i != j else '.' for j, elem in enumerate(line)]))
    out += ';\n'
    out += 'param s := {};\n\n'.format( ' '.join([str(i+1) + ' ' + str(star) for i, star in enumerate(star_list)]))
    out += 'param c_limit := {};\n'.format(c_limit)
    
    with open(filename, 'w') as f:
        f.write(out)
     

def runAmpl():
    """Starts ampl and decodes the output"""
    f = subprocess.check_output('ampl ' + AMPL_RUN_FILE).decode('utf-8').replace('\r', '')
    print(f)
    
def main():
    if len(sys.argv) != 3:
        print('usage: {} NUMBER_OF_INSTANCES C_LIMIT'.format(sys.argv[0]))
        sys.exit()
    number_of_instances = int(sys.argv[1])
    c_limit = int(sys.argv[2])
    
    gps_points = create_random_gps_points(number_of_instances, ALLOWED_GPS_RECTANGLE[0], ALLOWED_GPS_RECTANGLE[1])
    matrix = calc_distance_matrix_from_point_list(gps_points)
    #create random star list from 1 to 5
    star_list = [int(random_number_from_interval(1, 6)) for i in range(len(matrix))]
    write_ampl_data_file(AMPL_DAT_FILE, matrix, star_list, c_limit)
    
if __name__ == '__main__':
    main()  