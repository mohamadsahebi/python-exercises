import os
#for i,j,k in os.walk("/home/msahebi/mu"):
count = 0
for (CurentDir, LstSubDir, LstFile) in os.walk("/home/msahebi/os"):
    for file in LstFile:
        file_path = os.path.join(CurentDir,file)
        print(file_path, os.stat(file_path).st_size)
        count += os.stat(file_path).st_size
print(count)
        
    