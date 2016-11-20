from os import listdir
from os.path import isfile, join, dirname, realpath
import sys

parent_path = dirname(realpath(__file__)) + '/../'
sys.path.append(parent_path)

from lib import write_ampl_data_file, create_matrix, print_matrix, read_xml_file

def main():
    mypath = dirname(realpath(__file__))
    xmlfiles = (f for f in listdir(mypath) if isfile(join(mypath, f)) and f.endswith('.xml'))
    for filename in xmlfiles:
        data = read_xml_file(filename)
        outfile = filename.replace('.xml', '.dat')
        write_ampl_data_file(outfile, data)
            
if __name__ == '__main__':
    main()