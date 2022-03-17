#################################
#	LAB 1 PART 2		#
#################################
# 1 #
=begin
if ARGV.length == 1
	input_number = ARGV[0].to_i
else
	puts "Sorry, too much(less) arguments. Try to put only one."
end

puts "your number: #{input_number}"
=end

# sum of number digits
=begin
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
=end

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

# 3 #
# main func for task 3 part 2 lab 1
def my_main number, num_meth
	puts "your number: #{number}"
	num_copy = number
	case num_meth
	when 1
		print "Min digit by fun: ", min_digit(num_copy)
	when 2
		print "Max digit by fun: ", max_digit(num_copy)
	when 3
		print "Sum by function: ", sum_of_digits(num_copy)
	when 4
		print "Mul by function: ", mul_of_digits(num_copy)
	when 5
		print "Count of divider, that is not divide by 3: ", count_div_not_by_3(num_copy)
	else
		print "Hey, i haven't such method :("
	end
end

# Variant 11
# Finding count of divider, that is not divide by 3
def count_div_not_by_3 number
	count = 0
	for div in 1..number/2
		if number % div == 0 && div % 3 != 0
			count += 1
		end
	end
	return count
end

if ARGV.length == 2 then
	# print "So... There are methods:\n1.Min digit\n2.Max digit\n3.Sum digits\n4.Mul digits\n"
	my_main(ARGV[0].to_i, ARGV[1].to_i)
elsif ARGV.length == 1	
	puts "Sorry, too less arguments. Try to put 2 arguments."
elsif ARGV.length == 0
	puts "Hello world!"
else
	puts "Sorry, too much arguments. Try to put 2 arguments."
end
