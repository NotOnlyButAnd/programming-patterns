# Variant 11. Tasks: 5, 7, 14

# 5 #
=begin
Дана строка. Необходимо перемешать все символы строки в
случайном порядке
=end
def task_1 my_str
	return my_str.split('').sort_by{rand}.join
end

first_str = "Привет мир!"
puts "Shaked str: #{task_1(first_str)}"