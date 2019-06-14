import requests
dic = dict()
vorodi = input("Enter Address ==> : ")
darkhast = requests.get("https://api.hackertarget.com/whois/?q="+vorodi).text
lst1 = darkhast.split(" ")
for st in  lst1:
    if st in dic:
        dic[st] = dic[st]+1
    else:
        dic[st] = 1

print(darkhast)
print(dic)
