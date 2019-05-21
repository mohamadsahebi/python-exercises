str1 = 'mohamadsahebisahebiismohamadisisthatsahebi'
ls1 = str1.split()
print(ls1)
dic = dict()
for st1 in  str1:
    if st1 in dic:
        dic[st1] += 1
    else:
        dic[st1] =1
print(dic)        
    