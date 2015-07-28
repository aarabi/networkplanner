from __future__ import division
import csv
import argparse, glob
import os, ogr, gdal
import pandas as pd

#prints out the length
if __name__ == '__main__':
  fileNames=["output_varyingdemand/mv5_run_50/metrics-global.csv","output_varyingdemand/mv5_run_60/metrics-global.csv","output_varyingdemand/mv5_run_70/metrics-global.csv","output_varyingdemand/mv5_run_80/metrics-global.csv","output_varyingdemand/mv5_run_90/metrics-global.csv","output_varyingdemand/mv5_run_100/metrics-global.csv","output_varyingdemand/mv5_run_200/metrics-global.csv","output_varyingdemand/mv5_run_300/metrics-global.csv","output_varyingdemand/mv5_run_400/metrics-global.csv","output_varyingdemand/mv5_run_500/metrics-global.csv","output_varyingdemand/mv5_run_600/metrics-global.csv","output_varyingdemand/mv5_run_700/metrics-global.csv","output_varyingdemand/mv5_run_800/metrics-global.csv","output_varyingdemand/mv5_run_900/metrics-global.csv","output_varyingdemand/mv5_run_1000/metrics-global.csv","output_varyingdemand/mv5_run_2000/metrics-global.csv"]
  gridLengthCount = [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]
  #count =0
  row_count = 0
  counts=-1
  for files in fileNames:
    counts=counts+1
    if not os.path.isfile(files):
      print "Could not find file" + files
      gridLengthCount[counts]=-1
    else:
      with open(files, 'r') as csvfile:
        #print csvfile
        c2 = csv.reader(csvfile)
        count =0
        for hosts_row in c2:
          if count ==11:
            #print hosts_row[2]
            gridLengthCount[counts]=hosts_row[2]
            #row_count=row_count+1
          count=count+1
    
  print gridLengthCount
        