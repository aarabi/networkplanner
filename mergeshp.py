import glob, os
import shapefile
import argparse
if __name__ == '__main__':
	print "Merging previous shp files"
	demandLevels=["output_varyingdemand/mv5_run_50/",\
	"output_varyingdemand/mv5_run_60/","output_varyingdemand/mv5_run_70/","output_varyingdemand/mv5_run_80/","output_varyingdemand/mv5_run_90/",\
	"output_varyingdemand/mv5_run_100/","output_varyingdemand/mv5_run_200/","output_varyingdemand/mv5_run_300/","output_varyingdemand/mv5_run_400/","output_varyingdemand/mv5_run_500/",\
	"output_varyingdemand/mv5_run_600/","output_varyingdemand/mv5_run_700/","output_varyingdemand/mv5_run_800/","output_varyingdemand/mv5_run_900/","output_varyingdemand/mv5_run_1000/","output_varyingdemand/mv5_run_2000/"]
	parser = argparse.ArgumentParser(description="convert shapefiles into csv files")
	parser.add_argument('noShp', type=int, help="number of networks you want to combine")
	args = parser.parse_args()
	noShps = args.noShp
	files =[0]*(noShps)
	#for i in range(0,noShps):
	#	temploc = demandLevels[i]+"*.shp"
	#	files[i]=temploc
	#	print files
	for i in range(0,noShps):
		#print glob.glob(demandLevels[i]+"*.shp")
		if glob.glob(demandLevels[i]+"*.shp") == []:
			files[i] = "null"
		else:
			files[i] = glob.glob(demandLevels[i]+"*.shp")

	w = shapefile.Writer()
	count =-1
	for f in files:
		count=count+1
		if f == "null": 
			print "Could not find file" + str(demandLevels[count])
		else:
			tempstr = f[0].replace('[','')
			tempstr = tempstr.replace(']','')
			print tempstr
			r = shapefile.Reader(tempstr)
			w._shapes.extend(r.shapes())
			w.records.extend(r.records())
	w.fields = list(r.fields)
	w.save(demandLevels[noShps-1]+"merged/"+"merged")

	tempstr = demandLevels[noShps-1]+"merged/"+"merged"
	prj = open("%s.prj" % tempstr, "w")
	epsg = 'GEOGCS["WGS 84",'
	epsg += 'DATUM["WGS_1984",'
	epsg += 'SPHEROID["WGS 84",6378137,298.257223563]]'
	epsg += ',PRIMEM["Greenwich",0],'
	epsg += 'UNIT["degree",0.0174532925199433]]'
	prj.write(epsg)
	prj.close()