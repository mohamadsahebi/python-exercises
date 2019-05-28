co = ['Spain 300', 'China 2250', 'USA 1600','Germany 1500', 'Japan 700', 'Peru 40', 'Qatar 55']
def my_export(item):
    return int(item.split(' ')[1])
print(sorted(co,key=my_export))

     

