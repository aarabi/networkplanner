import ogr,csv,sys
import argparse
import shapefile
import os
import gdal
import pandas as pd
import itertools

# converts each input shapefile into a csv file

if __name__ == '__main__':

    parser = argparse.ArgumentParser(description="convert shapefiles into csv files")
    parser.add_argument('outputcsv_path_name', type=str,help="type folder/csvname.csv")
    changefile="test_data/sample_demand_nodes.csv"
    args = parser.parse_args()
    filename1 = '%s.csv' % args.outputcsv_path_name 
    
    if not os.path.isfile(filename1):
    	raise IOError('Could not find file ' + str(filename1))

    

    df = pd.read_csv(filename1, skiprows=1)
    saved_column_Name = df["Name"]
    saved_column_Population = df["Population"]
    saved_column_Longitude = df["X"]
    saved_column_Latitude = df["Y"]
    saved_column_grid = df["Metric > System"]
    new_list=[None]*len(saved_column_Name)
    count=-1
    for i in saved_column_Name:
        count=count+1
        new_list[count] = saved_column_Name[count],saved_column_Population[count],saved_column_Longitude[count],saved_column_Latitude[count]
    
    row_count=-1
    hashmap={}
    for row in saved_column_grid:
        row_count=row_count+1
        if row == "grid":
            hashmap[row_count]=row_count
    count =-1
    with open(filename1, 'rb') as inp, open(changefile, 'wb') as out:
        writer = csv.writer(out)
        ins=csv.reader(inp)
        ins.next()
        for row in ins:
            count=count+1
            if count not in hashmap:
                writer.writerow(row)
    #with open(changefile, 'rb') as inp:
    #    for row in csv.reader(inp):
    #        print row