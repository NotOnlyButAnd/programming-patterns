# Variant 11. Tasks: 5, 7, 14

# 5 #
=begin
Дана строка. Необходимо перемешать все символы строки в
случайном порядке
=end
def task_1 my_str
	return my_str.split('').sort_by{rand}.join
end

# 7 #
=begin
Дана строка, состоящая из символов латиницы. Необходимо проверить, 
образуют ли прописные символы этой строки палиндром
=end
def task_2 my_str
	t = my_str.scan(/[A-Z]/)
	return t == t.reverse
end

first_str = "Привет мир!"
puts "Shaked str: #{task_1(first_str)}"
puts "Is palindrom? -> #{task_2("As We Can")}"
