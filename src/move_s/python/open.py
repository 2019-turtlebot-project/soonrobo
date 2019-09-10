#!/usr/bin/env python
import os,sys,subprocess
#start new terminal
proc=subprocess.Popen('gnome-terminal')
#wait till terminal is set up
proc.wait()
#get list of terminals current running
current_terminals=os.listdir('/dev/pts/')
print current_terminals
#get new list of terminals and compare to find which terminal is new
new_terminals=os.listdir('/dev/pts')
for i in new_terminals:
    for y in current_terminals:
        if i==y:
            term=i
print term
fd=open(term,'wr')
fd.write('x\n')
