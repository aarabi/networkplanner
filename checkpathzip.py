import os.path

print  os.path.dirname(os.path.realpath(__file__))
print os.getcwd()
goal_dir = os.path.join(os.getcwd(), "/outputput_varyingdemand/mv5_run_50")
print goal_dir  
if os.path.exists(goal_dir):
	print "yay"
else:
	print "no"
            