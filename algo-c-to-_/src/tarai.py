#
#	from src/tarai.c
#
#	int tarai(int, int, int)	to	tarai
#	tarai				to	tak(*)
#
#	*) https://en.wikipedia.org/wiki/Tak_(function)
#

def tarai(x, y, z):
    if x <= y:
        return y
    return tarai(tarai(x-1,y,z), tarai(y-1,z,x), tarai(z-1,x,y))

def tak(x, y, z):
    if x <= y:
        return z
    return tak(tak(x-1,y,z), tak(y-1,z,x), tak(z-1,x,y))
