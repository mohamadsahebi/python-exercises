import sys
if len (sys.argv) < 3 :
    print('Arg is not enogh')
else:
    sum = int(sys.argv[1]) + int(sys.argv[2])
    print('A + B %d' % sum)    