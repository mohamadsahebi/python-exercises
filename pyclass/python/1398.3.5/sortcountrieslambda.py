co = ['Spain 300', 'China 2250', 'USA 1600','Germany 1500', 'Japan 700', 'Peru 40', 'Qatar 55']
count = sorted(co,key=lambda value:int(value.split(' ')[1]))
print(count)