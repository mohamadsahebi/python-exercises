def my_func (name,age=27):
    return('Hello %s, you are %d years old' % (name,age))


print(my_func('Mohamad'))
print(my_func('Mohamad',36))
#my_func(28,'Mohamad')
print(my_func(age=31,name='ali'))
