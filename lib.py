import random
from haversine import haversine

def create_matrix(n, m, default_value=None):
    """Returns a nxm list of lists, where each value is None or default param"""
    matrix = [[default_value for j in range(n)]for i in range(m)]
    return matrix
    
def euclidean_distance(point_1, point_2):
    """
        Calculates the euclidean distance between two points
        
        point_1: a tuple of (x,y) values
        point_2: a tuple of (x,y) values
    """
    delta_x = point_2[0] - point_1[0]
    delta_y = point_2[1] - point_1[1]
    return (delta_x ** 2 + delta_y ** 2) ** 0.5
    
def print_matrix(matrix, ndigits_round=2):
    """Prints a list of lists of floats beautiful to stdout. """
    for line in matrix:
        print(''.join(['{:7}'.format(round(elem, ndigits_round)) for elem in line]))
        
        
def random_number_from_interval(lower, upper):
    """Returns a random number out of the interval [lower, upper]"""
    val = random.random()
    return lower + (upper -lower) * val
    
def calculate_distance_matrix(point_list):
    """ Returns a nxn matrix (list of lists) where n is the length of the point_list
    
    point_list: Is a list of (x,y) tuples (x and y can be floating point values or integers)
    Return: Distance matrix, where d_ij is the calculated euclidean distance from point i to point j
    """
    n = len(point_list)
    matrix = create_matrix(n, n, default_value = 0.0)
    for i in range(n):
        for j in range(n):
            matrix[i][j] = euclidean_distance(point_list[i], point_list[j])
    return matrix
    
def calculate_distance_matrix_from_gps(long_lat_list, earth_radius):
    n = len(long_lat_list)
    matrix = create_matrix(n, n)
    for i, from_long_lat in enumerate(long_lat_list):
        for j, to_long_lat in enumerate(long_lat_list):
            matrix[i][j] = haversine(from_long_lat, to_long_lat, earth_radius)
    return matrix
    
    
def write_ampl_data_file(filename, data):
    """data: a dictionary containing 'matrix', 'star_list', 'c_limit' and 'name'"""
    matrix = data.get('matrix')
    star_list = data.get('star_list')
    c_limit = data.get('c_limit')
    name = data.get('name')
    
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