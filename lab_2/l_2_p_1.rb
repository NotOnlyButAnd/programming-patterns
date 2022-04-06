class Department
	attr_accessor :name
  	attr_reader :phone
    
	def initialize (name, phone, *commitments)	# конструктор класса
		self.name = name	# поле объекта
		self.phone = phone
		@commitments = commitments
		@selected_comm_index = nil
	end

	# плохой геттер, лучше не получать массив целиком
	#def getCommitments	# Геттер на обязанности (целиком на массив)
	#	@commitments
	#end

	def to_s	# преобразование объекта в строку
		"Department \"#{self.name}\"; Contact phone: #{self.phone}; Commitments: #{@commitments}"
	end

	def add_commitment(commitment)	# добавление обязанности
		@commitments.append(commitment)
	end

	def select_commitment_by_index(commitment_index)	# Выбор обязанности по индексу
		@selected_comm_index = commitment_index
	end

	def delete_selected_commitment	# удаление выделенной обязанности
		@commitments.delete_at(@selected_comm_index)
		# @selected_comm_index = 0
	end

	def get_selected_comm_text		# получение текста выделенной обязанности
		@commitments[@selected_comm_index]
	end

	def change_selected_comm_text(val)		# изменение текста выделенной обязанности
		@commitments[@selected_comm_index] = val
	end

	def get_commitments_info	# all commitments in string
		t_s = "Commitments of \"#{self.name}\": "
		@commitments.each { |x| t_s = t_s + x + "; "}
		return t_s
	end

	# метод класса проверки корректности номера телефона (простая проверка в международном формате)
	def self.is_correct_phone (val)
		/^((\+7)+([0-9]){10})$/.match(val).to_s == val
	end

	def phone=(val)
		if self.class.is_correct_phone(val)
			@phone = val
		else
			raise ArgumentError.new("Phone number is incorrect!")
		end
	end
	
end

=begin
nil может быть использовать как проверку что ничего не выбрано?
t_arr = [1,2,3,4,5,6,7,8,9]
puts t_arr[nil]
=end

# testing new to_s...
#dep_3 = Department.new('Third Department', '+78613991111')
dep_3 = Department.new('Third Department', '+78613991111', 'W1', 'W2', 'W3')

# почему он создает список списка, если я там не создаю список нигде?
# или это проблема компилятора
#dep_3 = Department.new('Third Department', '+78613991111', ['W1', 'W2', 'W3'])

puts "Were created: " + dep_3.to_s
#dep_3.add_commitment("Making reports")
#dep_3.add_commitment("Work for BOSS")
#dep_3.add_commitment("Drinking tea")
puts dep_3.get_commitments_info
