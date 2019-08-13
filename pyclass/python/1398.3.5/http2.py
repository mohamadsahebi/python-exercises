import requests, re
captal = input('Enter country: ')
address = 'https://en.wikipedia.org/wiki/%s' % captal
pattern = r'Capital\D*title=\D*>(\D+)</a>'
r = requests.get(address)
if r.status_code == 200:
    content = r.text
    mo = re.search(pattern, content)
    if mo:
        capital = mo.group(1)
        print(capital)
