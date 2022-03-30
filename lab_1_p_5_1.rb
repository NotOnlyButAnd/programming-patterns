# XXX/ Этот код необходим только при использовании русских букв на Windows
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
# /XXX

=begin
Дана строка. Необходимо найти все даты, которые описаны в
виде "31 февраля 2007"
=end
def all_data my_str
    return my_str.scan(/([0-2]\d|3[0-1]) (января|февраля|марта|апреля|мая|июня|июля|августа|сентября|октября|ноября|декабря) (\d{4})/).map{|e| e.join(' ')}.join("; ")
end

puts "Input some string: "
first_string = STDIN.gets.chomp
puts "Date's: ", all_data(first_string)