#!/usr/bin/env python

import os
import subprocess
sortPath = "/home/george/Media_Dump"
sortPath2 = "/mnt/2630A42C1E187F93/To be sorted"


for file in os.listdir(sortPath):
	print "Name = " + file
	subprocess.call(['./filebot-Rename.sh','0', file, sortPath])
	# subprocess.call("./deluge-test.sh")

for file in os.listdir(sortPath2):
	print "Name = " + file
	subprocess.call(['./filebot-Rename.sh','0', file, sortPath2])
	# subprocess.call("./deluge-test.sh")




