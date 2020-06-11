#
#	from src/movebloc.c
#
#	void reverse(int, int)		to	reverse
#	void rotate(int, int, int)	to	rotate
#

#
#	concat(a) from src/_helper.awk
#

BEGIN {
	s = "SUPERCALIFRAGILISTICEXPIALIDOCIOUS"

	split(s, a, "")

	reverse(a, 1, length(s))
	reverse(a, 1, length(s))

	if (s != concat(a)) {
		printf "ERROR in reverse(): \n%s\n%s (should be)\n", concat(a), s
		exit
	}

	print concat(a)
	for (_ = 0; _ < 17; _++) {
		rotate(a, 1, 6, length(s))
		print concat(a)
	}
}
