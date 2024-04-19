import sys
import os
import random

directory   = os.path.expanduser('~') +  "/Wallpapers"
transitions = ["wipe --transition-angle 30", "wave --transition-angle 30", "outer", "any"]

def LoadFiles(directory):

    for filename in sorted(os.listdir(directory)):
        # TODO: check if file is an image
    
        print(filename);

def LoadWallpaper(directory, filename):
    global transitions

    path = directory + "/" + filename

    if not os.path.isfile(path):
        return

    os.system(f"swww img {path} --transition-fps 60 --transition-step 150 --transition-type {random.choice(transitions)}")

if len(sys.argv) == 1:
    LoadFiles(directory)
elif len(sys.argv) == 2:
    LoadWallpaper(directory, sys.argv [1])

    
