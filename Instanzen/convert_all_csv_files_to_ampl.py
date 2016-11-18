CSV_FILES = ['BundeslaenderTour.csv',
    'OesterreichTourC500.csv', 'OesterreichTourC1000.csv',
    'OesterreichTourC1000AllProfits1.csv', 'OesterreichTourC15000.csv']


import os, sys

#import lib
parent_path = os.path.dirname(os.path.realpath(__file__)) + '/../'
sys.path.append(parent_path)

from lib import write_ampl_data_file, create_matrix, print_matrix

def read_csv_line(file):
    line = file.readline()
    replacelist = [('ä', 'ae'), ('ü', 'ue'), ('ü', 'ue'), ('ö', 'oe')]
    replacelist = replacelist + [(t[0].upper(), t[1][0].upper()+t[1][1:]) for t in replacelist]
    for repl, repl_with in replacelist:
        line = line.replace(repl, repl_with)
    return line.strip().strip(';').split(';')
    
def read_matrix_and_stars(file):
    first_line = read_csv_line(file)
    n = len(first_line)
    matrix = create_matrix(n, n)
    star_list = [None] * n
    for i in range(n):
        line = read_csv_line(file)
        # at line pos 0, there is the header of the line
        assert line[0] == first_line[i]
        for j in range(n):
            elem = float(line[j+1].replace(',', '.'))
            matrix[i][j] = elem
    # fetch the stars out of the diagonale:
    for i in range(n):
        star_list[i] = int(matrix[i][i])
        matrix[i][i] = 0.0
        
    return matrix, star_list
    
def presolve(data):
    print(data['name'])
    print('Limit: {}'.format(data['c_limit']))
    matrix = data['matrix']
    n = len(matrix)
    minimas = [min([matrix[i][j] for j in range(i+1, n)]) for i in range(n-1)]
    minimas.sort()
    cum = 0
    for i in range(len(minimas)):
        cum += minimas[i]
        print(cum)
    print()
    print()

def main():
    for csv in CSV_FILES:
        data = {}
        with open(csv, 'r', encoding='utf-8') as f:
            data['name'] = read_csv_line(f)[0]
            data['c_limit'] = int(read_csv_line(f)[1])
            #empty line
            f.readline()
            data['matrix'], data['star_list'] = read_matrix_and_stars(f)
        outfile = csv.replace('.csv', '.dat')
        
        presolve(data)
        #write_ampl_data_file(outfile, data)
            
if __name__ == '__main__':
    main()