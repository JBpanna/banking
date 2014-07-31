class BankAccount
	attr_reader :name, :balance
	attr_writer :number
	@@number_deposits = 0
	def initialize(name, number, initial_balance)
		@name = name
		@number = number
		@balance = initial_balance
	end

	def withdrawal(amount)
		@balance -= amount
	end

	private
	def deposit(amount)
		@balance += amount
		@@number_deposits += 1
	end

	def get_deposit_number
		return @@number_deposits
	end

end