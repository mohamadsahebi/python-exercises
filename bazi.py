import random
javab = random.randint(1,99)
hads = int(input('Hatds khod ra vared konid: '))

while hads != javab:
    if hads > javab:
        print('smaller')
    else:
        print('biger')
    hads = int(input('Hatds khod ra vared konid: '))
   

print('you rock')          

