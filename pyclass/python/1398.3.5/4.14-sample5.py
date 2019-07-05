import re
with open('squid.log') as fo:
    content = fo.read()

pattern = r'(\d{1,3})[.](\d{1,3})[.](\d{1,3})[.](\d{1,3})'
Iter = re.finditer(pattern, content)
for mo in Iter:
    print('All IP List', mo.group(0))
    print('OCT 1', mo.group(1))
    print('OCT 2', mo.group(2))
    print('OCT 3', mo.group(3))
    print('OCT 4', mo.group(4))