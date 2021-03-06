#
#	from src/eulerian.c
#
#	Eulerian	to	eulerianNumber
#

#
#	rep(s,n) from src/_helper.awk
#

BEGIN {
	xl = 0; xr = 10; xlength = 11
	yl = 0; yr = 10
	w1 = 3;	w2 = 8

	padding = rep(" ", w1 + 2)
	border = rep(rep("-", w2), xlength)
	fmt1 = sprintf("%%%dd |", w1)
	fmt2 = sprintf("%%%dd", w2)

	printf padding
	for (n=xl; n<=xr; n++) printf fmt2, n
	print "\n" padding border

	for (k=yl; k<=yr; k++) {
		printf fmt1, k
		for (n=xl; n<=k; n++) printf fmt2, eulerianNumber(k, n)
		print
	}
}
