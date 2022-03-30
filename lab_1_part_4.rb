# Variant 11. Tasks: 11, 23, 35, 47, 59

# 11 #
=begin
Дан целочисленный массив, в котором лишь один элемент
отличается от остальных. Необходимо найти значение этого элемента
[1 1 1 2 1 1], [4 4 4 2 4 4 4]...
=end
def task_1 my_arr
	return my_arr.select{ |i| my_arr.count(i) == 1 }[0]
end


def my_main my_arr, num_meth
	case num_meth
	when 1
		print "Еhe only one elem: ", task_1(my_arr)
	else
		print "Hey, i haven't such method :("
	end
end

# ARGV[0] - method (1\2\3\4), ARGV[1] - input type (k\f), ARGV[2] - file path
if ARGV.length == 3 then
	if ARGV[1] == "f"
		puts "Reading array from file #{ARGV[2]}..."
		arr = File.read(ARGV[2]).split(' ').map(&:to_i)
		puts "your array: #{arr} #{arr.class} of #{arr[0].class}"
		my_main(arr, ARGV[0].to_i)
	elsif ARGV[1] == "k"
		puts "Huh? there are 3 args, but read from keyboard? Ok, input elems:"
		input_str = STDIN.gets.chomp
		arr = input_str.split(' ').map(&:to_i)
		my_main(arr, ARGV[0].to_i)
	else
		puts "Huh? I don't know such 2-nd arg..."
	end
elsif ARGV.length == 2
	if ARGV[1] == "f"
		puts "Huh? From file? But there's no path..."
	elsif ARGV[1] == "k"
		puts "Ok, input some array elements (SPACE BETWEEN ELEMS!!!):"
		input_str = STDIN.gets.chomp
		arr = input_str.split(' ').map(&:to_i)
		my_main(arr, ARGV[0].to_i)
	else
		puts "Huh? I don't know such 2-nd arg..."
	end
elsif ARGV.length == 1
	puts "Sorry, too less arguments. Try to put 2 (or 3) arguments."
else
	puts "Sorry, too much (less) arguments. Try to put 2 (or 3) arguments."
end