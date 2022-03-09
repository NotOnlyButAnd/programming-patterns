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
num_copy = 125
puts num_copy.class	# Number? Integer? Fixnum????
sum_dig = 0
while num_copy > 0
	sum_dig += num_copy % 10
  #puts "остаток #{num_copy % 10}"
	num_copy /= 10
  #puts "новое число #{num_copy}"
end
puts sum_dig

# 2 #
# Finding sum of number digits
def sum_of_digit number
	num_copy = number
	sum_dig = 0
	while num_copy > 0
		sum_dig += num_copy % 10
		num_copy /= 10
	end
	return sum_dig
end

puts sum_of_digits 522

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

puts max_digit 522
