from __future__ import division
import csv
import argparse, glob
import os, ogr, gdal


if __name__ == '__main__':

    shpToCsv =[]
    for files in glob.glob("convertedcsv/*.csv"):
        shpToCsv.append(files)
    
    hashmap = {}
    with open("test_data/sample_demand_nodes.csv", 'r') as csvfile:
        next(csvfile)
        c1 = csv.reader(csvfile)
        for row in c1:
            hashmap[str(round(float(row[2]),6))+","+str(round(float(row[3]),6))]=int(row[1])
            
    
    totalpop = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    count =0
    for files in shpToCsv:
        point1 = []
        with open(files, 'r') as csvfile:
            next(csvfile)
            c1 = csv.reader(csvfile)
            for hosts_row in c1:
                row = hosts_row[1]
                row = row.replace('<LineString><coordinates>','')
                row = row.replace('</coordinates></LineString>','')
                row = str(row)
                point1.extend(row.split(' '))

            point2= []
            
            for row in point1:
                temp1= row.split(",")[0]
                temp1 =round(float(temp1),6)
                temp2= row.split(",")[1]
                temp2 =round(float(temp2),6)
                string=(str(temp1)+","+str(temp2))
                point2.append(string)

            
            
            for row in point2:
                if row in hashmap:
                    totalpop[count]+=hashmap[row]
                
            count+=count
            print totalpop[count]