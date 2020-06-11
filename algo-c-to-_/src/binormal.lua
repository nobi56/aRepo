--
--	from src/ binormal.c
--
--	void binormal_rnd(double, double *, double *)	to	binormalRnd
--

local floor = math.floor
local log = math.log
local sqrt = math.sqrt

local function binormalRnd(n, crnd)
	local r1, r2, t

	repeat
		r1, r2 = 2 * crnd:rnd() - 1, 2 * crnd:rnd() - 1
		t = r1 * r1 + r2 * r2
	until t <= 1 and t ~= 0

	t = -log(t) / t
	r1, r2 = sqrt((1 + n) * t) * r1, sqrt((1 - n) * t) * r2

	return r1 + r2, r1 - r2
end

local function samplePlotter(x, y, m, fgColor, bgColor)
	return function (bmp, crnd, n, r)
		bmp:clear(bgColor)
		for _=1,n do
			local a, b = binormalRnd(r, crnd)
			bmp:dot(floor(x//2 + a*m), floor(y//2 + b*m), fgColor)
		end
	end
end

return {
	binormalRnd = binormalRnd,
	samplePlotter = samplePlotter
}
