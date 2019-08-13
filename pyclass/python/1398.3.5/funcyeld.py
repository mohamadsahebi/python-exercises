g = (i for i in range (1,6))
print (type(g))
#print (dir(g))
print(g.__next__())
print(g.__next__())


print(next(g))
print(next(g))


def fn():
    for i in range (1,6):
        yield i

g= fn()
print(next(g))
print(next(g))
