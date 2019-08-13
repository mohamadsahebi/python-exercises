import requests

Url = input('enter site address: ') #'http://www.github.com/'
r = requests.get(Url,allow_redirects=True)
#if r.status_code == 200:
#    print(r.text)

print(r.status_code) 
for i in range(0, len(r.history)):
    print(r.history[i])
    print(r.history[i].headers["location"])
