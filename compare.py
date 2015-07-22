from __future__ import division
import csv
import argparse, glob
import os, ogr, gdal


if __name__ == '__main__':

    parser = argparse.ArgumentParser(description="convert shapefiles into csv files")
    parser.add_argument('csv1', type=str, help="type folder/csvname minus the csv")
    parser.add_argument('csv2', type=str,help="type folder/csvname")
    
   
    args = parser.parse_args()
    filename1 = '%s.csv' % args.csv1
    filename2 = '%s.csv' % args.csv2
    
    
    if not os.path.isfile(filename1):
        raise IOError('Could not find file ' + str(filename1))

    source = ogr.Open(filename1, gdal.GA_Update)
    if source is None:
        raise IOError('Could open file ' + str(filename1))
    
    if not os.path.isfile(filename2):
        raise IOError('Could not find file ' + str(filename2))

    source = ogr.Open(filename2, gdal.GA_Update)
    if source is None:
        raise IOError('Could open file ' + str(filename2))
    

    point1 = []
    
    with open(filename1, 'r') as csvfile:
        c1 = csv.reader(csvfile)
        for hosts_row in c1:
            row = hosts_row[1]
            row = row.replace('<LineString><coordinates>','')
            row = row.replace('</coordinates></LineString>','')
            row = str(row)
            point1.extend(row.split(' '))

    row_count1 = sum(1 for row in csv.reader( open(filename1) ) )
    point2 = []    
    
    with open(filename2, 'r') as csvfile:
        c2 = csv.reader(csvfile)
        for hosts_row in c2:
            row = hosts_row[1]
            row = row.replace('<LineString><coordinates>','')
            row = row.replace('</coordinates></LineString>','')
            row = str(row)
            point2.extend(row.split(' '))
        masterlist = list(c2)

    print 
    if(list(set(point1) - set(point2))==[]):
        print filename1+" & "+filename2+"  NULL"
    else:
        print filename1+" & "+filename2
        temp = len(list(set(point1) - set(point2)))
        print list(set(point1) - set(point2))
        #print temp
        print temp/row_count1
    