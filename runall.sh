#!/bin/sh
#run the network planner for varying demand cases

python compare.py convertedcsv/mv5_run_50 convertedcsv/mv5_run_60 
python compare.py convertedcsv/mv5_run_60 convertedcsv/mv5_run_70 
python compare.py convertedcsv/mv5_run_70 convertedcsv/mv5_run_80 
python compare.py convertedcsv/mv5_run_80 convertedcsv/mv5_run_90 
python compare.py convertedcsv/mv5_run_90 convertedcsv/mv5_run_100 
python compare.py convertedcsv/mv5_run_100 convertedcsv/mv5_run_200 
python compare.py convertedcsv/mv5_run_200 convertedcsv/mv5_run_300 
python compare.py convertedcsv/mv5_run_300 convertedcsv/mv5_run_400 
python compare.py convertedcsv/mv5_run_400 convertedcsv/mv5_run_500 
python compare.py convertedcsv/mv5_run_500 convertedcsv/mv5_run_600 
python compare.py convertedcsv/mv5_run_600 convertedcsv/mv5_run_700 
python compare.py convertedcsv/mv5_run_700 convertedcsv/mv5_run_800 
python compare.py convertedcsv/mv5_run_800 convertedcsv/mv5_run_900 
python compare.py convertedcsv/mv5_run_900 convertedcsv/mv5_run_1000 

