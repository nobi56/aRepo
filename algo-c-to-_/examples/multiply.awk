#
#	from src/multiply.c
#
#	unsigned multiply(unsigned, unsigned)	to	mulA(, mulB, mulC)
#

BEGIN {
	printf "%s, %s, %s, %s -> %d, %d, %.2f, %.2f\n",
		"2*3", "mulA(2,3)", "2.1*3.1", "mulA(2.1,3.1)", 2*3, mulA(2,3), 2.1*3.1, mulA(2.1,3.1)
	#printf "%s, %s, %s, %s -> %d, %d, %.2f, %.2f\n",
	#	"2*3", "mulB(2,3)", "2.1*3.1", "mulB(2.1,3.1)", 2*3, mulB(2,3), 2.1*3.1, mulB(2.1,3.1)
	#printf "%s, %s, %s, %s -> %d, %d, %.2f, %.2f\n",
	#	"2*3", "mulC(2,3)", "2.1*3.1", "mulC(2.1,3.1)", 2*3, mulC(2,3), 2.1*3.1, mulC(2.1,3.1)
}
