from zipfile import *
import ogr,csv,sys
import argparse
import shapefile
import os
import gdal

#creates a zip file of all the output files from the network planner
# a separate zip for each demand level

if __name__ == '__main__':
	print "creating ZIP"
	parser = argparse.ArgumentParser(description="convert shapefiles into csv files")
	parser.add_argument('pathNames', type=str, help="type folder/csvname minus the csv")
	parser.add_argument('zipnames', type=str,help="type folder/csvname")
	args = parser.parse_args()
	filesToZip= ["merged.dbf","merged.prj","merged.shp","merged.shx"]
	zipnames=args.zipnames
	pathNames=args.pathNames
	count =0
	itemcount =0
	strn = pathNames + zipnames
	count = count +1
	zipname ='%s.zip' % strn
	zip_archive = ZipFile(zipname,"w")
	for items in filesToZip:
		item = pathNames + "/" + items
		zip_archive.write(item,items)
	zip_archive.close()