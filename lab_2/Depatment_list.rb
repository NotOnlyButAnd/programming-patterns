# подключаем классы
require File.dirname(__FILE__) + "/Department.rb"

class Department_list
    
	def initialize (*deps_list=[])	# конструктор класса
		@departments = deps_list
		@selected_dep_index = nil
	end

	def to_s	# преобразование объекта в строку
		str = "Department list:\n"
		for dep in @departments
			str += dep.to_s + "\n"
		end
		return str
	end
end
