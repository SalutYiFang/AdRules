# -*- coding:utf-8 -*-
#! python2
import shutil
a=0
readDir = "adblock+adguard.txt"  #old
writeDir = "adblock+adguard.txt" #new
# txtDir = "/home/Administrator/Desktop/１"
lines_seen = set()
outfile = open(writeDir, "w")
f = open(readDir, "r")
for line in f:
  if line not in lines_seen:
    a+=1
    outfile.write(line)
    lines_seen.add(line)
    print(a)
    print('\n')
outfile.close()
print("success")
