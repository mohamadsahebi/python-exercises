import re
with open('squid.log') as fo:
    content = fo.read()

pattern = r'(?P<oct1>\d{1,3})[.](?P<oct2>\d{1,3})[.](?P<oct3>\d{1,3})[.](?P<oct4>\d{1,3})'
Iter = re.finditer(pattern, content)
for mo in Iter:
    print('All IP List', mo.group(0))
    print('OCT 1', mo.group('oct1'))
    print('OCT 2', mo.group('oct2'))
    print('OCT 3', mo.group('oct3'))
    print('OCT 4', mo.group('oct4'))