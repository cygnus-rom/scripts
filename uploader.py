# Copyright (C) Dhruv Gera
import time
import subprocess
import select
devicename="beryllium"
listdevice=[devicename]

import os, glob
objects = os.listdir(".")
sofar = 0
name = ""
for item in objects:
        size = os.path.getsize(item)
        if size > sofar:
                sofar = size
                name = ""+item
os.environ["largest"] = name
import subprocess
import select
cmd = subprocess.Popen(['bash'], stdin=subprocess.PIPE, stdout=subprocess.PIPE)
os.system("$PWD/upload.sh")
os.system("rm $largest")

objects = os.listdir("out/target/product/beryllium/obj/PACKAGING/target_files_intermediates")
sofar = 0
name = ""
for item in objects:
        size = os.path.getsize(item)
        if size > sofar:
                sofar = size
                name = "out/target/product/beryllium/obj/PACKAGING/target_files_intermediates"+item
os.environ["largest"] = name
import subprocess
import select
cmd = subprocess.Popen(['bash'], stdin=subprocess.PIPE, stdout=subprocess.PIPE)
os.system("$PWD/upload.sh")
