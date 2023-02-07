####################################################
import sys
sys.path.append('..')
from assign02 import *
####################################################
print("[import ./../assign02.py] is done!")
####################################################
#
# Please implement (20 points)
# mylist_append (see list_append in assign02.sml)
# mylist_rappend (see list_rappend in assign02.sml)
# mylist_reverse (see list_reverse in assign02.sml)
#

def mylist_append(xs, ys):
    def helperAppend(cs, x1):
        if (x1.get_ctag() == 0):
            return cs
        else:
            new = helperAppend(cs, x1.get_cons2())
            return mylist_cons(x1.get_cons1(), new)
    
    return helperAppend(xs, ys)

def mylist_rappend(xs, ys):
    def helperRappend(cs, x1):
        if (x1.get_ctag() == 0):
            return cs
        else:
            new = helperRappend(mylist_cons(x1.get_cons1(), cs), x1.get_cons2())
            return new
    
    return helperRappend(xs, ys)

def mylist_reverse(xs):
    return mylist_rappend(mylist_nil(), xs)


####################################################
