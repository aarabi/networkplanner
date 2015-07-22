from __future__ import division
import csv
import argparse, glob
import os, ogr, gdal
import pandas as pd

#prints out the length
if __name__ == '__main__':

   fileNames=["output_varyingdemand/mv5_run_50/metrics-global.csv","output_varyingdemand/mv5_run_60/metrics-global.csv","output_varyingdemand/mv5_run_70/metrics-global.csv","output_varyingdemand/mv5_run_80/metrics-global.csv","output_varyingdemand/mv5_run_90/metrics-global.csv","output_varyingdemand/mv5_run_100/metrics-global.csv","output_varyingdemand/mv5_run_200/metrics-global.csv","output_varyingdemand/mv5_run_300/metrics-global.csv","output_varyingdemand/mv5_run_400/metrics-global.csv","output_varyingdemand/mv5_run_500/metrics-global.csv","output_varyingdemand/mv5_run_600/metrics-global.csv","output_varyingdemand/mv5_run_700/metrics-global.csv","output_varyingdemand/mv5_run_800/metrics-global.csv","output_varyingdemand/mv5_run_900/metrics-global.csv","output_varyingdemand/mv5_run_1000/metrics-global.csv","output_varyingdemand/mv5_run_2000/metrics-global.csv","output_varyingdemand/mv5_run_3000/metrics-global.csv","output_varyingdemand/mv5_run_4000/metrics-global.csv"]
   gridLengthCount = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
   count =0
   row_count = 0
   for files in fileNames:
    print files
    with open(files, 'r') as csvfile:
        c2 = csv.reader(csvfile)
        count =0
        for hosts_row in c2:
            if count ==11:
                print hosts_row[2]
            count=count+1
    
        