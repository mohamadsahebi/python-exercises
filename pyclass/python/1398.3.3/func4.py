countries = ['Spain 300', 'China 2250', 'usa 1600', 'germany 1500', 'japan 700', 'qatar 55']
def export(item):
    return(int(item.split(' ')[1]))
print(sorted(countries, key=export))    