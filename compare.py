from __future__ import division
import csv
import argparse, glob
import os, ogr, gdal
import pandas as pd
#this file compares 2 csv files ( converted shp files)
# it compares them row by row
# looks incorrect
# need to compare point to point
if __name__ == '__main__':

    parser = argparse.ArgumentParser(description="convert shapefiles into csv files")
    parser.add_argument('csv1', type=str, help="type folder/csvname minus the csv")
    parser.add_argument('csv2', type=str,help="type folder/csvname")
    parser.add_argument('csv3', type=str,help="type folder/csvname of the metrics-local.csv file")
   
    args = parser.parse_args()
    filename1 = '%s.csv' % args.csv1
    filename2 = '%s.csv' % args.csv2
    filename3 = '%s.csv' % args.csv3
    
    print args.csv1," & ", args.csv2
    
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
        csvfile.next()
        c1 = csv.reader(csvfile)
        for hosts_row in c1:
            row = hosts_row[1]
            row = row.replace('<LineString><coordinates>','')
            row = row.replace('</coordinates></LineString>','')
            temp = row.split(' ',1)[0]
            temp1 = round(float(temp.split(',',1)[0]),5)
            temp2 = round(float(temp.split(',',1)[1]),5)
            point1.append(str(temp1)+","+str(temp2))
            temp = row.split(' ',1)[1]
            temp1 = round(float(temp.split(',',1)[0]),5)
            temp2 = round(float(temp.split(',',1)[1]),5)
            point1.append(str(temp1)+","+str(temp2))

    row_count1 = len(set(point1))
    #print row_count1
    point2 = []    
    
    with open(filename2, 'r') as csvfile:
        csvfile.next()
        c2 = csv.reader(csvfile)
        for hosts_row in c2:
            row = hosts_row[1]
            row = row.replace('<LineString><coordinates>','')
            row = row.replace('</coordinates></LineString>','')
            temp = row.split(' ',1)[0]
            temp1 = round(float(temp.split(',',1)[0]),5)
            temp2 = round(float(temp.split(',',1)[1]),5)
            point2.append(str(temp1)+","+str(temp2))
            temp = row.split(' ',1)[1]
            temp1 = round(float(temp.split(',',1)[0]),5)
            temp2 = round(float(temp.split(',',1)[1]),5)
            point2.append(str(temp1)+","+str(temp2))

    diffCsv= list(set(point1)-set(point2))
    for row in diffCsv:
        print row
    df = pd.read_csv(filename3, skiprows=1)
    saved_column_X = df["X"]
    saved_column_Y = df["Y"]
    saved_column_hh = df["Demand (household) > Target household count"]
    #print saved_column_X
    count =-1
    pd.options.mode.chained_assignment = None
    saved_column_X=list(saved_column_X)
    saved_column_Y=list(saved_column_Y)
    for val in saved_column_X:
        #print val
        count=count+1
        saved_column_X[count]=round(float(val),5)
        saved_column_X[count]=str(saved_column_X[count])+","
    count =-1
    for val in saved_column_Y:
        count=count+1
        saved_column_Y[count]=round(float(val),5)
        
    count =-1
    for row in saved_column_X:
        count=count+1
        saved_column_X[count]=str(saved_column_X[count])+str(saved_column_Y[count])
        #print saved_column_X[count]
        
    count =-1
    rowcount =-1
    householdCount=0
    for row in diffCsv:
        index =saved_column_X.index(row)
        householdCount=householdCount+saved_column_hh[index]
            
    print householdCount
    # print ""
    # if(list(set(point1) - set(point2))==[]):
    #     print filename1+" & "+filename2+"  NULL"
    # else:
    #     print filename1+" & "+filename2
    #     temp = len(list(set(point1) - set(point2)))
    #     print list(set(point1) - set(point2)),": ", temp/row_count1