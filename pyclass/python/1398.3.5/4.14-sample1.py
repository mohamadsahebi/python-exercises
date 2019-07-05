import re
with open('squid.log') as fo:
    content = fo.read()

pattern = r'\d{1,3}[.]\d{1,3}[.]\d{1,3}[.]\d{1,3}'
lst = re.findall(pattern, content)
print(lst)    