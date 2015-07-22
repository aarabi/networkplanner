import ogr,csv,sys
import argparse
import shapefile
import os
import gdal

if __name__ == '__main__':

    parser = argparse.ArgumentParser(description="convert shapefiles into csv files")
    parser.add_argument('shapefile_path_name', type=str, help="type folder/shapefile_name.shp")
    parser.add_argument('outputcsv_path_name', type=str,help="type folder/csvname.csv")
   
    args = parser.parse_args()
    filename1 = '%s.shp' % args.shapefile_path_name 
    filename2 = '%s.csv' % args.outputcsv_path_name 
    
    shpfile=filename1 #sys.argv[1]
    csvfile=filename2#sys.argv[2]
    if not os.path.isfile(filename1):
    	raise IOError('Could not find file ' + str(filename1))

    source = ogr.Open(filename1, gdal.GA_Update)
    if source is None:
		raise IOError('Could open file ' + str(filename1))
    

    csvfile=open(csvfile,'wb')
    ds=ogr.Open(shpfile)
    lyr=ds.GetLayer()
    dfn=lyr.GetLayerDefn()
    nfields=dfn.GetFieldCount()
    #print nfields
    fields=[]
    for i in range(nfields):
    	fields.append(dfn.GetFieldDefn(i).GetName())
    	#print dfn.GetFieldDefn(i).GetName()
    fields.append('kmlgeometry')
    csvwriter = csv.DictWriter(csvfile, fields)
    csvwriter.writeheader()
    #csvfile.write(','.join(fields)+'\n')
    for feat in lyr:
    	#print feat
    	attributes=feat.items()
    	geom=feat.GetGeometryRef()
    	#print geom
    	attributes['kmlgeometry']=geom.ExportToKML()
    	csvwriter.writerow(attributes)
    del csvwriter,lyr,ds
    csvfile.close()