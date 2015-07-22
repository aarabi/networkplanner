import os.path

print  os.path.dirname(os.path.realpath(__file__))
print os.getcwd()

if os.path.exists("/media/aarabimadhavan/TheOtherDrive/forkednp/networkplanner/output_varyingdemand/mv5_run_50"):
	print "yay"
else:
	print "no"
            