--
--	from src/multiply.c
--
--	unsigned multiply(unsigned, unsigned)	to	mulA, mulB, mulC
--

local M = require 'multiply'

local mulA, mulB, mulC = M.mulA, M.mulB, M.mulC

do
	print(("%s, %s, %s, %s -> %d, %d, %.2f, %.2f"):format(
		"2*3", "mulA(2,3)", "2.1*3.1", "mulA(2.1,3.1)", 2*3, mulA(2,3), 2.1*3.1, mulA(2.1,3.1)))
	print(("%s, %s, %s, %s -> %d, %d, %.2f, (_CAN'T_CALL_)"):format(
		"2*3", "mulB(2,3)", "2.1*3.1", "mulB(2.1,3.1)", 2*3, mulB(2,3), 2.1*3.1))
	print(("%s, %s, %s, %s -> %d, %d, %.2f, (_CAN'T_CALL_)"):format(
		"2*3", "mulC(2,3)", "2.1*3.1", "mulC(2.1,3.1)", 2*3, mulC(2,3), 2.1*3.1))
end

--
-- Lua54 (probably Lua53-) refuse to execute bitwise operation with float.
--
--		"2*3", "mulB(2,3)", "2.1*3.1", "mulB(2.1,3.1)", 2*3, mulB(2,3), 2.1*3.1, mulB(2.1,3.1)))
--
-- lua: ./src/multiply.lua:10: number (local 'a') has no integer representation
--
