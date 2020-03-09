import os
import time
import glob
import subprocess
import select
devicename="beryllium"
fin = open("uploader.py", "rt")
data = fin.read()
data = data.replace('q', devicename)
fin.close()

fin = open("uploader.py", "wt")
fin.write(data)
fin.close()
os.system("python3 uploader.py")
