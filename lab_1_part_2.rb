#################################
#	LAB 1 PART 2		#
#################################
# 1 #
if ARGV.length == 1
	input_number = ARGV[0].to_i
else
	puts "Sorry, too much(less) arguments. Try to put only one."
end

puts "your number: #{input_number}"

# sum of number digits
num_copy = input_number
# puts num_copy.class	# Number? Integer! Fixnum????
sum_dig = 0
while num_copy > 0
	sum_dig += num_copy % 10
  #puts "остаток #{num_copy % 10}"
	num_copy /= 10
  #puts "новое число #{num_copy}"
end
puts "Sum by code: ", sum_dig

# 2 #
# Finding sum of number digits
def sum_of_digits number
	num_copy = number
	sum_dig = 0
	while num_copy > 0
		sum_dig += num_copy % 10
		num_copy /= 10
	end
	return sum_dig
end

num_copy = input_number
puts "Sum by function: ", sum_of_digits(num_copy)

# Finding max nujmber digit
def max_digit number
	num_copy = number
	max_dig = 0
	while num_copy > 0
		cur_dig = num_copy % 10
		if cur_dig > max_dig
			max_dig = cur_dig
		end
		num_copy /= 10
	end
	return max_dig
end

num_copy = input_number
puts "Max digit by fun: ", max_digit(num_copy)

# Finding min nujmber digit
def min_digit number
	num_copy = number
	min_dig = 9
	while num_copy > 0
		cur_dig = num_copy % 10
		if cur_dig < min_dig
			min_dig = cur_dig
		end
		num_copy /= 10
	end
	return min_dig
end

num_copy = input_number
puts "Min digit by fun: ", min_digit(num_copy)

# Finding mul of number digits
def mul_of_digits number
	num_copy = number
	mul_dig = 1
	while num_copy > 0
		mul_dig *= num_copy % 10
		num_copy /= 10
	end
	return mul_dig
end

num_copy = input_number
puts "Mul by function: ", mul_of_digits(num_copy)
