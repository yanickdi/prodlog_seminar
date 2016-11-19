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
    
def calculate_distance_matrix_from_gps(long_lat_list, earth_radius=None):
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
        
def write_xml_file(outfile, data):
    from xml.etree.ElementTree import Element, SubElement, tostring
    from xml.dom import minidom
    
    root = Element('Instance')
    root.set('limit', str(data['c_limit']))
    root.set('name', data['name'])
    root.set('number_of_nodes', str(len(data['matrix'])))
    # distances:
    distancesNode = SubElement(root, 'Distances')
    for i, line in enumerate(data['matrix']):
        for j, elem in enumerate(line):
            elemNode = SubElement(distancesNode, 'distance',
            attrib={'from' : str(i), 'to' : str(j), 'value' : str(data['matrix'][i][j])})
    # stars:
    starsNode = SubElement(root, 'Stars')
    [SubElement(starsNode, 'star', attrib={'stars' : str(star), 'node' : str(i)}) for i, star in enumerate(data['star_list'])]
    rough_string = tostring(root, 'utf-8')
    reparsed = minidom.parseString(rough_string)
    with open(outfile, 'w', encoding='utf-8') as f:
        f.write(reparsed.toprettyxml(indent=' '*4))
        
        
def read_xml_file(infile):
    """Returns a python data dictionary"""
    import xml.etree.ElementTree as ET
    
    data = {}
    tree = ET.parse(infile)
    root = tree.getroot()
    data['name'] = root.get('name')
    data['c_limit'] = int(root.get('limit'))
    n = int(root.get('number_of_nodes'))
    data['matrix'] = create_matrix(n, n)
    for distanceNode in root.find('Distances'):
        i = int(distanceNode.get('from'))
        j = int(distanceNode.get('to'))
        dist = float(distanceNode.get('value'))
        data['matrix'][i][j] = dist
    data['star_list'] = [0] * n
    for starNode in root.find('Stars'):
        i = int(starNode.get('node'))
        star = int(starNode.get('stars'))
        data['star_list'][i] = star
    return data
    
    
def greedy_nearest_neighbour_heuristic(data):
    """
        This function tries to solve the Orientieering Problem starting at index 0.
        At each step, it calculates stars/kilometer for each neighbour and picks the neighbour
        with best stars/kilometer into its route
        
        Returns: A solution dictionary having keys:
            tour:      like [0, 1, 2, 4, 0]
            stars:      the amount of stars of the route
            length:     length of the tour in cumulated distance
    """
    stars, matrix, n, limit = data['star_list'], data['matrix'], len(data['matrix']), data['c_limit']
    tour = [0]
    stars_in_tour = stars[0]
    length_already_without_back = 0
    was_node_added = True
    while was_node_added:
        # calculate ratios for all possible nodes (those who are left):
        possible_points = zip(range(n), matrix[tour[-1]], stars)
        possible_points = (point for point in possible_points if point[0] not in tour)
        ratios = ((i, stars*1000/(dist+0.1)) for i, dist, stars in possible_points)
        ratios = sorted(ratios, key=lambda k: k[1], reverse=True)
        # try to insert the first best into tour
        was_node_added = False
        for node_nr, _ in ratios:
            new_length = length_already_without_back + matrix[tour[-1]][node_nr] + matrix[node_nr][0]
            if new_length <= limit:
                tour.append(node_nr)
                was_node_added = True
                length_already_without_back = new_length - matrix[node_nr][0]
                stars_in_tour += stars[node_nr]
                break
    # greedy solution is finished, return values
    tour_length = length_already_without_back + matrix[tour[-1]][0]
    tour.append(0)
    return {'tour' : tour, 'stars': stars_in_tour, 'length': tour_length}