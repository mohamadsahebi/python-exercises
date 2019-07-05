import re
with open('squid.log') as fo:
    content = fo.read()

pattern = r'\d{1,3}[.]\d{1,3}[.]\d{1,3}[.]\d{1,3}'
lst = re.findall(pattern, content)
lst_unique = []
for ip in lst:
    if ip not in lst_unique:
        lst_unique.append(ip)
print(lst_unique)