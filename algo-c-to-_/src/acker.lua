--
--	from src/acker.c
--
--	int A(int, int)		to	ack
--

local function ack(x, y)
	if x == 0 then return y+1 end
	if y == 0 then return ack(x-1,1) end
	return ack(x-1, ack(x,y-1))
end

return {
	ack = ack
}
