# 1 # Делаем без учета переносов строки
path = "F:/Кирилл/003 УНИВЕР/3 курс/004 2 семестр/Ruby/lab_1_p_6.txt"
my_strings = File.readlines(path).map{ |i| i.chomp }.sort_by{|i| i.length}
puts "Sorted by len(str):\n#{my_strings}"

# 2 # Добавил в файл строку а а а а а а, там много "слов" но она короткая
my_strings = my_strings.sort_by{|i| i.split(' ').length}
puts "Sorted by count words:\n#{my_strings}"