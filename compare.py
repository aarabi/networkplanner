import csv
import argparse, glob
import os, ogr, gdal

if __name__ == '__main__':

    parser = argparse.ArgumentParser(description="convert shapefiles into csv files")
    parser.add_argument('csv1', type=str, help="type folder/csvname minus the csv")
    parser.add_argument('csv2', type=str,help="type folder/csvname")
    
   
    args = parser.parse_args()
    filename1 = '%s.csv' % args.csv1
    filename2 = '%s.csv' % args.csv2
    
    
    if not os.path.isfile(filename1):
        raise IOError('Could not find file ' + str(filename1))

    source = ogr.Open(filename1, gdal.GA_Update)
    if source is None:
        raise IOError('Could open file ' + str(filename1))
    
    if not os.path.isfile(filename2):
        raise IOError('Could not find file ' + str(filename2))

    source = ogr.Open(filename2, gdal.GA_Update)
    if source is None:
        raise IOError('Could open file ' + str(filename2))
    else:
        print "successfull"

    
    
    f1 = file(filename1, 'r')
    f2 = file(filename2, 'r')
    

    f1 = csv.reader(f1)
    f2 = csv.reader(f2)
    
    point1 = []
    for hosts_row in f1:
        row = hosts_row[1]
        row = row.replace('<LineString><coordinates>','')
        row = row.replace('</coordinates></LineString>','')
        row = str(row)
        point1.extend(row.split(' '))
        
    #print "first csv file"
    #for row in point1:
    #    print row


    point2 = []
    for hosts_row in f2:
        row = hosts_row[1]
        row = row.replace('<LineString><coordinates>','')
        row = row.replace('</coordinates></LineString>','')
        row = str(row)
        point2.extend(row.split(' '))
        #point2 = row.split(' ',1)

    #print "second csv file"
    #for row in point2:
    #    print row
    
    print list(set(point1) - set(point2))
    row_count1 = sum(1 for row in csv.reader( open(filename1) ) )
    
      
    
       
    masterlist = list(f2)
    #print row_count1
    count =0
    not_found = 0
    for hosts_row in f1:
        hosts_row = hosts_row[1].strip()
        found = False
        #num = 0
        for master_row in masterlist:
            master_row = master_row[1].strip()
            #num = num +1
            #print num
            if hosts_row == master_row:
                count+=1
                found=True
                #print "***************"
                #print "found", hosts_row
                break
                       
        if not found:
            #print hosts_row
            not_found +=1
    
    
    if count == row_count1:
        print "yes, subset!"
    else:
        print "not_subset; The number of grid cooncetions absent in the next demand level are:", not_found