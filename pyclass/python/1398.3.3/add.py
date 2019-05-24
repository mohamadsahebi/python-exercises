import sys
l = len(sys.argv)
sum = 0
if l >= 3:
    for i in sys.argv[1:] :
        sum = sum + int(i)
    print(sum)

    
