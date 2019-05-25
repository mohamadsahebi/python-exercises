def count (str1 = input('Enter str with space: ')):
    ls1 = str1.split(' ')
    dic = dict()
    for st1 in ls1:
        if st1 in dic:
            dic[st1] = dic[st1] + 1
        else:
            dic[st1] = 1    

    return (dic)



print(count())
  


