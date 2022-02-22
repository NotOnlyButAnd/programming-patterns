#################################
#			  LAB 1				#
#################################

# 1 #
# Hello World in Ruby + Comment
puts "Hello, slaves!"
# puts - ставит в конце символ новой строки
# print - не делает этого

# 2 #
# Welcome the user
puts "What's your name? (⌐■_■)"

input_name = gets

puts "Ky-ky, #{input_name}"

# 3 #
# About language...
puts "What's your favourite language (programming, of course)?"

input_language = gets
inp_down = input_language.chomp.downcase

if inp_down == 'ruby' then
	puts "Oh, what's a toady!"
elsif inp_down == 'c#'
	puts "Ruby will be soon... But Windows apps is cool"
elsif inp_down == "java"
	puts "Ruby will be soon... However, your pain is too hard"
elsif inp_down == "sql"
	puts "Ruby will be soon... And your database will die"
else
	puts "Ruby will be soon... And please, learn some other language"
end

# проверка "типа" объектов
# puts "\nNOT downcase - #{input_language.class}, down - #{inp_down.class}"
