from zipfile import *
import ogr,csv,sys
import argparse
import shapefile
import os
import gdal

#creates a zip file of all the output files from the network planner
# a separate zip for each demand level

if __name__ == '__main__':

	filesToZip= ["dataset.db","metrics-global.csv","metrics-job-input.csv","metrics-local.csv","networks-proposed.dbf","networks-proposed.prj","networks-proposed.shp","networks-proposed.shx"]
   
	zipnames=["/mv5_run_50","/mv5_run_60","/mv5_run_70","/mv5_run_80","/mv5_run_90","/mv5_run_100","/mv5_run_200","/mv5_run_300","/mv5_run_400","/mv5_run_500","/mv5_run_600","/mv5_run_700","/mv5_run_800","/mv5_run_900","/mv5_run_1000","/mv5_run_2000","/mv5_run_3000","/mv5_run_4000"]
	
	pathNames=["output_varyingdemand/mv5_run_50","output_varyingdemand/mv5_run_60","output_varyingdemand/mv5_run_70","output_varyingdemand/mv5_run_80","output_varyingdemand/mv5_run_90","output_varyingdemand/mv5_run_100","output_varyingdemand/mv5_run_200","output_varyingdemand/mv5_run_300","output_varyingdemand/mv5_run_400","output_varyingdemand/mv5_run_500","output_varyingdemand/mv5_run_600","output_varyingdemand/mv5_run_700","output_varyingdemand/mv5_run_800","output_varyingdemand/mv5_run_900","output_varyingdemand/mv5_run_1000","output_varyingdemand/mv5_run_2000","output_varyingdemand/mv5_run_3000","output_varyingdemand/mv5_run_4000"]
	
	count =0
	itemcount =0
	for paths in pathNames:
		strn = paths + zipnames[count]
		count = count +1
		zipname ='%s.zip' % strn
		zip_archive = ZipFile(zipname,"w")
		for items in filesToZip:
			item = paths + "/" + items
			zip_archive.write(item,items)
		zip_archive.close()