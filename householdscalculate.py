from __future__ import division
import csv
import argparse, glob
import os, ogr, gdal
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
# finds the number of households for every demand level
# calculates the total number of households at each demand level
# this is done by refering to the huge metrics-local.csv file
# number of households at each demand level and the total households
if __name__ == '__main__':

    fileNames=["output_varyingdemand/mv5_run_50/metrics-local.csv","output_varyingdemand/mv5_run_60/metrics-local.csv","output_varyingdemand/mv5_run_70/metrics-local.csv","output_varyingdemand/mv5_run_80/metrics-local.csv","output_varyingdemand/mv5_run_90/metrics-local.csv",\
    "output_varyingdemand/mv5_run_100/metrics-local.csv","output_varyingdemand/mv5_run_200/metrics-local.csv","output_varyingdemand/mv5_run_300/metrics-local.csv","output_varyingdemand/mv5_run_400/metrics-local.csv","output_varyingdemand/mv5_run_500/metrics-local.csv",\
    "output_varyingdemand/mv5_run_600/metrics-local.csv","output_varyingdemand/mv5_run_700/metrics-local.csv","output_varyingdemand/mv5_run_800/metrics-local.csv","output_varyingdemand/mv5_run_900/metrics-local.csv","output_varyingdemand/mv5_run_1000/metrics-local.csv",\
    "output_varyingdemand/mv5_run_2000/metrics-local.csv"]
    
    householdCount = [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]
    totalhh = [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]
    count =-1
    row_count = 0
    counts=-1
    for files in fileNames:
        counts=counts+1
        if not os.path.isfile(files): 
            print "Could not find file" + files
            householdCount[counts]=-1
            totalhh[counts]=-1
        else:
            print files
            householdCount[counts]=0
            #totalhh[counts]=0
            df = pd.read_csv(files, skiprows=1)
            row_count = 0
            saved_column_grid = df["Metric > System"]
            saved_column_hh = df["Demand (household) > Target household count"]
            totalhh[count]=sum(saved_column_hh)
            for row in saved_column_grid:
                if row == "grid":
                    householdCount[count]=householdCount[count]+saved_column_hh[row_count]
                    row_count = row_count+1
        			#row_count = row_count +1
        	#print householdCount[count]
        count=count+1
    
    print householdCount
    print totalhh
    
        