# подключаем классы
require File.dirname(__FILE__) + "/Department.rb"

class Department_list
	attr_accessor :name
  	attr_reader :phone
    
	def initialize (name, phone, *commitments)	# конструктор класса
		self.name = name	# поле объекта
		self.phone = phone
		@commitments = commitments
		@selected_comm_index = nil
	end

	def to_s	# преобразование объекта в строку
		"Department: \"#{self.name}\"; Contact phone: #{self.phone}; Commitments: #{@commitments}"
	end
end
