#
#	from src/cuberoot.c
#
#	double cuberoot(double)		to	fCbrt
#	double cuberoot2(double)	to	fCbrt2
#
#	from src/icubrt.c
#
#	unsigned icubrt(unsigned)	to	iCbrt
#

#
#	_p(b) from src/_helper.awk
#

function _t_iCbrt(l, r,		i, t) {
	for (i = l; i < r; i++) {
		t = iCbrt(i)
		if (t * t * t > i || (t+1) * (t+1) * (t+1) <= i) {
			printf "ERROR: %d %d\n", i, t
			exit
		}
	}
	printf "iCbrt() seems to be fine in %d to %d-1.\n", l, r
}

BEGIN {
	for (i = -10; i <= 10; i++) {
		t = fCbrt(i); u = fCbrt2(i)
		printf "%3d %.14f %18.14f %3s (delta: %g)\n",
			i, t, u, _p(t == u), abs(t-u)
	}

	print

	# _t_iCbrt(0, 2 ^ 32) # Maybe this will take a lot of time. (*)
	_t_iCbrt(0, 2 ^ 16)
}

#
#	*) Please choose a number depending on the purpose and situation.
#
#	e.g. a list of elapsed time - running _t_iCbrt(0, n) on my old cheap laptop
#
#	in luajit, n == 1<<28 (2^28):
#
#		$ time LUA_PATH=src/?.luajit luajit example/cuberoot.luajit
#		...
#		iCbrt() seems to be fine in 0 to 268435456-1.
#
#		real    0m49.737s
#		user    0m49.516s
#		sys     0m0.036s
#
#	in luajit, n == 1<<32 (2^32):
#
#		$ time LUA_PATH=src/?.luajit luajit example/cuberoot.luajit
#		...
#		iCbrt() seems to be fine in 0 to 4294967296-1.
#
#		real    13m32.873s
#		user    13m33.160s
#		sys     0m0.122s
#
#	in lua, n == 1<<28 (2^28)
#
#		$ time LUA_PATH=src/?.lua lua example/cuberoot.lua
#		...
#		iCbrt() seems to be fine in 0 to 268435456-1.
#
#		real    5m9.958s
#		user    5m9.423s
#		sys     0m0.082s
#
