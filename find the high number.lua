-- Find the high number of array

local numbers = {8, 9, 3, 7, 0, 50, 30, 123} -- put in the number (only number)

function count(array)
	local arr = array
	i = 1 -- lua's index is start at 1
	while arr[i] ~= nil do
		i = i + 1
	end
	return i - 1
end

function highnumber(array)
	local arr = array
	for i = 1, count(array) do
		for j = i, count(array) do
			if arr[j] > arr[i] then
				arr[i] = arr[j]
			end
		end
	end
	return arr
end

print(highnumber(numbers)[1])
