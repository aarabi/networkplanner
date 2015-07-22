from __future__ import division
import ogr,csv,sys
import argparse
import shapefile
import os, glob
import gdal, re 
import matplotlib.pyplot as pyplot
import glob
from decimal import *
import numpy as np
from optparse import OptionParser

def calculateHouseholdPercentage(shpToCsv):
	xelements = {}
	dict_input_data = {}
	with open('test_data/sample_demand_nodes.csv', 'r') as csvfile:
		csvreader = csv.reader(csvfile)
		next(csvreader)
		for row in csvreader:
			dict_input_data[row[0]]= str(round(float(row[2]),5))+","+str(round(float(row[3]),5))

	original= len(dict_input_data)
	for csvs in shpToCsv:
		#print csvs
		f = open(csvs)
		csv_f = csv.reader(f)
		csvs= "_".join(csvs.split('_')[2:3])
		csvs= csvs.replace('.csv','')
		rows = []
		for row in csv_f:
			rows.append(row)

		del rows[0]
		point1 = []
		point2 = []
		#print rows
		for row in rows:
			temp = str(row)
			row = temp.split(' ',1)[1]
			row = row.replace('\'<LineString><coordinates>','')
			row = row.replace('</coordinates></LineString>\']','')
			temp = row.split(' ',1)[0]
			temp1 = round(float(temp.split(',',1)[0]),5)
			temp2 = round(float(temp.split(',',1)[1]),5)
			point1.append(str(temp1)+","+str(temp2))
			temp = row.split(' ',1)[1]
			temp1 = round(float(temp.split(',',1)[0]),5)
			temp2 = round(float(temp.split(',',1)[1]),5)
			point1.append(str(temp1)+","+str(temp2))
		
		point1=set(point1)	
		#print point1
		# print point1[0]
		# for key, values in dict_input_data.iteritems():
		# 	print values


		new_dict = dict((k, v) for k, v in dict_input_data.iteritems() if v in point1)
		xelements[csvs]=(len(new_dict)/original)*100
	#print xelements
	keys = map(int, xelements.keys())
	values = map(float, xelements.values())
	#xlim( 0, 5000 ) 
	
	pyplot.xticks(np.arange(min(keys)-50, max(keys)+100, 100))
	pyplot.yticks(np.arange(0, max(values)+40,10)) 
	pyplot.bar(keys,values)
	pyplot.ylabel('Percentage of households connected')
	pyplot.xlabel('Demand in KWh/yeah/household')
	pyplot.show()
	


if __name__ == '__main__':
	shpToCsv = []
	
	for files in glob.glob("convertedcsv/*.csv"):
	    shpToCsv.append(files)

	calculateHouseholdPercentage(shpToCsv)
	#print shpToCsv[1]	
	