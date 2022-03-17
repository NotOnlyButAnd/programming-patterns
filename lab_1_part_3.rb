def min_elem_arr my_array
	len = my_array.length
	if len == 0
		return nil
	else
		minim = my_array[0]
		for i in 1..len-1
			if my_array[i] < minim
				minim = my_array[i]
			end
		end
		return minim
	end
end

def max_elem_arr my_array
	len = my_array.length
	if len == 0
		return nil
	else
		maxim = my_array[0]
		for i in 1..len-1
			if my_array[i] > maxim
				maxim = my_array[i]
			end
		end
		return maxim
	end
end

def sum_elem_arr my_array
	len = my_array.length
	if len == 0
		return nil
	else
		sum = 0
		for el in my_array
			sum += el
		end
		return sum
	end
end

def mul_elem_arr my_array
	len = my_array.length
	if len == 0
		return nil
	else
		mul = 1
		for el in my_array
			mul *= el
		end
		return mul
	end
end

arr = [2, 3, 1, 6]
arr2 = []
puts "arr: #{arr}"
puts "min: #{min_elem_arr(arr)}"
puts "max: #{max_elem_arr(arr)}"
puts "sum: #{sum_elem_arr(arr)}"
puts "mul: #{mul_elem_arr(arr)}"
# puts "#{arr[3]}, #{arr2[0].class}, length: #{arr.length}, ARR: #{arr}"
