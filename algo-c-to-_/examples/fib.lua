--
--	from src/fib.c
--
--	int fib1(int)		to	fib1
--	int fib2(int)		to	fib2
--	a part of main		to	fib3
--	fib3			to	fib4
--

local M = require 'fib'

local fib1, fib2, fib3, fib4 = M.fib1, M.fib2, M.fib3, M.fib4

do
	for i=1,11 do io.write(" ", fib1(i)) end
	print()
	for i=1,11 do io.write(" ", fib2(i)) end
	print()
	for i=1,11 do io.write(" ", fib3(i)) end
	print()
	for i=1,11 do io.write(" ", fib4(i)) end
	print()
end
