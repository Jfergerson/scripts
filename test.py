import os

folder = os.getcwd()
i = 0
for root, dirs, filenames in os.walk(folder):
    for filename in filenames:
        new_filename = str(i)
        fullpath = os.path.join(root, filename)
        filename_split = os.path.splitext(fullpath) # filename and extensionname (extension in [1])
        filename_zero, fileext = filename_split
        os.rename(filename,new_filename+fileext)
        i +=1
