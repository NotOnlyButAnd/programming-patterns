require File.dirname(__FILE__) + "/User.rb"

# Создаем несколько пользователей
user_1 = User.new("s0153478", "+79529762139")
print "\nUser were created: ", user_1.to_s

user_2 = User.new("s0153612", "+79892805802")
print "\nUser were created: ", user_2.to_s

user_3 = User.new("s0142987", "+79996332237")
print "\nUser were created: ", user_3.to_s 

# добавляем созданных пользователей в массив
my_users = [user_1, user_2, user_3]

# запишем пользователей в файлы txt и YAML
puts "\n\nWriting users to txt and YAML..."
User.write_to_txt(my_users, "users_data.txt")
User.write_to_YAML(my_users, "users_data.yaml")
puts "Writed successfully!!"

# читаем из txt, выводим (checked)
new_users = User.read_from_txt("users_data.txt")
puts "\nReaded from txt: "
User.print_users_arr(new_users)

###################################################
# читаем из YAML, выводим (!!!ERROR!!!), почему???
# на стационарном компе версия руби 3.0.3p157 (2021-11-24), там метод отрабатывает
# на ноуте версия руби 3.1.2p20 (2022-04-12), тут выдает ошибку что недопустимый класс User
# пытался запускать код из лабы 2, Department класс - там то же так же
###################################################
#new_users_1 = User.read_from_YAML("users_data.yaml")
#puts "\nReaded from YAML: ", User.print_users_arr(new_users_1)