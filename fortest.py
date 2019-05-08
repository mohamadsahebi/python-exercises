my_lst = []
name = input('enter  your name : ')
count = 0
age = True
while age != -1 and age  != 90 : 
    age = int(input('enter  your age : '))
    my_lst.append(age)
    count = count + 1
print('Tedade vorodi is : ', count, my_lst, ' ','Bozorgtarin Age is : ', max(my_lst),' ', 'name operator is :',name)
