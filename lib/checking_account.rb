class CheckingAccount<BankAccount
	def initialize(name, number, initial_balance, daily_spending_limit)
		super(name, number, initial_balance)

		@daily = daily_spending_limit
	end
end