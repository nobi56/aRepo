--
--	from src/power.c
--
--	double ipower(double, int)	to	iPow
--	iPow				to	iPowR
--	double power(double, double)	to	fPow
--

local H = require '_helper'

local abs = H.abs

local function iPow(x, n)
	local r, t = 1, abs(n)
	while t ~= 0 do
		x, r, t = x*x, t&1==1 and r*x or r, t>>1
	end
	return n<0 and 1/r or r
end

local function iter(x, n, r, t)
	if t ~= 0 then
		return iter(x*x, n, t&1==1 and r*x or r, t>>1)
	end
	return n<0 and 1/r or r
end

local function iPowR(x, n)
	return iter(x, n, 1, abs(n))
end

local exp, log = math.exp, math.log

local function fPow(x, n)
	return x>0 and exp(n*log(x)) or 0
end

return {
	iPow = iPow,
	iPowR = iPowR,
	fPow = fPow
}