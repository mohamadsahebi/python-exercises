import os, time, datetime
folder = input('Enter PWD address : ')
date_time = os.walk(folder)
dic = dict()
for item in  date_time:
    if item in dic:
        dic[item] =+ 1
    else:
        dic[item] = 1
print(dic)           
    
        
        

