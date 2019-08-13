def fibs ():
     i, j = 0, 1
     while True:
         yield i
         i, j = j, i+j
     



g = fibs()
print(next(g))
print(next(g))
print(next(g))
print(next(g))
print(next(g))
print(next(g))
print(next(g))
print(next(g))
print(next(g))
print(next(g))

      