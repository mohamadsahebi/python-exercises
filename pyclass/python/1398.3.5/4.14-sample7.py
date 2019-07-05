import re
content = 'abcdabcdabcd'
#pattern = 'a.*?a' #non-greedy
pattern = 'a.*a'  #greedy
mo = re.search(pattern, content)
if mo:
    print(mo.group(0))
