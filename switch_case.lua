--- Switch:Case
---
--- It's 0.000001 seconds slower than using
--- regular if statements (on my machine),
--- but if you prefer using it, it will work.
--
-- @param value		value to compare to
-- @param values	table of values to compare to, with functions
--
-- @return	the returned value from the used function
--
local function switch(value, values)
	local f = values[value] or values['_def']

	return f and f()
end

--- Example
switch('test', {
	['meow']	= function() print'Got meow' end,
	['meowest']	= function() print'Got meowest' end,
	['test']	= function() print'Got test' end,
	['_def']	= defaultFunc
})

function defaultFunc()
	print'Got default'
end
