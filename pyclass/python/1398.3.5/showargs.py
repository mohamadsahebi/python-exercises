'''
def show_args(* args):  # * args list midahad
    for i in args:
        print(i)


show_args('Mohamad')  
show_args('Mohamad', 'Ali', 'hamed')

'''

def show_wargs (** args):  ## ** args Dictionary midahad
    for key in args:
        print(key, args[key])


show_wargs(ip='5.200.78.194', port=14563, db= 'testdb')