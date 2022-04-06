class Department
	def initialize (name, phone, *commitments)	# конструктор класса
		@name = name	# поле объекта
		@phone = phone
		@commitments = commitments
		@selected_comm_index = 0
	end

	def getName	# Геттер на название
		@name
	end

	def setName(name)	# Сеттер на название
		@name=name
	end

	def getPhone	# Геттер на телефон
		@phone
	end

	def setPhone(phone)	# Сеттер на телефон
		@phone=phone
	end

	# плохой геттер, лучше не получать массив целиком
	#def getCommitments	# Геттер на обязанности (целиком на массив)
	#	@commitments
	#end

	def printInfo	# вывод информации об объекте класса Department
		puts "Department \"#{getName}\"; Contact phone: #{getPhone}; Commitments: #{@commitments}"
	end

	def addCommitment(commitment)	# добавление обязанности
		@commitments.append(commitment)
	end

	def selectCommitmentByName(commitment)	# Выбор обязанности по имени
		@selected_comm_index = @commitments.index(commitment)
	end

	def selectCommitmentByIndex(commitment_index)	# Выбор обязанности по индексу
		@selected_comm_index = commitment_index
	end

	def deleteCommitmentByPos(commitment_index)	# удаление обязанности по индексу
		@commitments.delete_at(commitment_index)
	end

	def deleteCommitmentByName(commitment)	# удаление обязанности по названию
		@commitments.delete(commitment)
	end

	def deleteSelectedCommitment	# удаление выделенной обязанности
		@commitments.delete_at(@selected_comm_index)
		# @selected_comm_index = 0
	end

	def getSelectedCommText		# получение текста выделенной обязанности
		@commitments[@selected_comm_index]
	end

	def changeSelectedCommText(val)		# изменение текста выделенной обязанности
		@commitments[@selected_comm_index] = val
	end

	def printCommitments	# вывод обязанностей на экран
		puts "Commitments of \"#{getName}\":"
		@commitments.each { |x| puts x}
	end
end

# создаем объекты класса
dep_1 = Department.new('First Department', '+7 999 633 22 37')
puts "#{dep_1.getName} with phone: #{dep_1.getPhone} were created..."
# puts "#{dep_1.name} with phone: #{dep_1.phone} were created..." - так не получится

dep_2 = Department.new('Second Department', '+7 861 254 12 35')
puts "#{dep_2.getName} with phone: #{dep_2.getPhone} were created..."

# создаем объект и выводим инфу более красиво
dep_3 = Department.new('Third Department', '+7 861 399 11 11')
print "Were created: "
dep_3.printInfo
dep_3.addCommitment("Work for BOSS")
dep_3.addCommitment("Sitting at the chair")
dep_3.addCommitment("Drinking tea")
dep_3.printCommitments

# создаем объект с обязанностями
sales_dep = Department.new('Sales department', '+78612341122', 'Making reports', 'Realizating sales', 'Changing tariffs')
sales_dep.printInfo
sales_dep.selectCommitmentByIndex(1)
sales_dep.changeSelectedCommText("Making paper planes")
puts sales_dep.getSelectedCommText
sales_dep.deleteSelectedCommitment
sales_dep.printInfo
