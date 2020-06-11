#
#	from src/swap.c
#
#	void swap(int *, int *)		to	swap; in _helper.awk
#	(void swap1(int *, int *)	to	swap1)
#	void swap2(int *, int *)	to	swap2
#

BEGIN {
	a[1]=1.23; a[2]=4.56; a[3]=7.89

	printf "%.2f %.2f %.2f\n\t%d <-> %d (%s)\n", a[1], a[2], a[3], 1, 2, "swap"
	swap(a, 1, 2)
	printf "%.2f %.2f %.2f\n\t%d <-> %d (%s)\n", a[1], a[2], a[3], 1, 2, "swap"
	swap(a, 1, 2)

	#printf "%.2f %.2f %.2f\n\t%d <-> %d (%s)\n", a[1], a[2], a[3], 1, 2, "swap1"
	#swap1(a, 1, 2)
	#printf "%.2f %.2f %.2f\n\t%d <-> %d (%s)\n", a[1], a[2], a[3], 1, 2, "swap1"
	#swap1(a, 1, 2)

	printf "%.2f %.2f %.2f\n\t%d <-> %d (%s)\n", a[1], a[2], a[3], 2, 3, "swap2"
	swap2(a, 2, 3)
	printf "%.2f %.2f %.2f\n\t%d <-> %d (%s)\n", a[1], a[2], a[3], 3, 2, "swap2"
	swap2(a, 3, 2)
	printf "%.2f %.2f %.2f\n\t(reset: %d = %s, %d = %s)\n",
		a[1], a[2], a[3], 1, "2^1023", 2, "-(2^1023)"

	a[1]=2^1023; a[2]=-a[1]

	printf "%.2f %.2f %.2f\n\t%d <-> %d (%s)\n", a[1], a[2], a[3], 1, 2, "swap"
	swap(a, 1, 2)
	printf "%.2f %.2f %.2f\n\t%d <-> %d (%s)\n", a[1], a[2], a[3], 1, 2, "swap"
	swap(a, 1, 2)

	printf "%.2f %.2f %.2f\n\t%d <-> %d (%s)\n", a[1], a[2], a[3], 1, 2, "swap2"
	swap2(a, 1, 2)
	printf "%.2f %.2f %.2f\n\t%d <-> %d (%s)\n", a[1], a[2], a[3], 1, 2, "swap2"
	swap2(a, 1, 2)
	printf "%.2f %.2f %.2f\n", a[1], a[2], a[3]
}
