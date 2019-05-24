content = 'In this guide, I’m going to share with you Tmux cheat sheet to help you get started with tmux on Linux or Unix box. Before the cheat sheet section, let’s first have a look at how to install tmux on Linux.'
l = content.split(' ')
d = dict()
for i in l:
    if i in d:
        d[i] = d[i] + 1
    else:
        d[i] = 1
print(d)            