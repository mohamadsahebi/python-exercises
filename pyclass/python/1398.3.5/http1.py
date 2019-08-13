import requests
import re
address = 'https://www.freebsd.org/community/mailinglists.html'
pattern = r'\w+@\w+[.]\w+|\w+AT\w+[.]\w+'
r = requests.get(address)
if r.status_code == 200:
    content = r.text
    lst = re.findall(pattern, content)
    for email in lst :
        print(email)


