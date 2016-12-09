import os, sys
parent_path = os.path.dirname(os.path.realpath(__file__)) + '/../'
sys.path.append(parent_path)
from lib import read_xml_file


if __name__ == '__main__':
    data = read_xml_file('Welttour.xml')
    with open('welt_werte.csv', 'w') as f:
        f.write(';' + ';'.join(data['city_names']) + '\n')
        matrix = data['matrix']
        for i, line in enumerate(matrix):
            f.write(data['city_names'][i] + ';' + ';'.join(str(elem).replace('.',',') for elem in line) + '\n')
        