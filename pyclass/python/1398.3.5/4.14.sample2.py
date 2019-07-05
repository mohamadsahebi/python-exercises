import re
with open('squid.log') as fo:
    content = fo.read()

pattern = r'\d{1,3}[.]\d{1,3}[.]\d{1,3}[.]\d{1,3}'
Iter = re.finditer(pattern, content)
for mo in Iter:
    #print(mo) 
    print(mo.group(0))
