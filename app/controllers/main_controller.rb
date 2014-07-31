class MainController < ApplicationController
	require 'bank_account.rb'
	require 'checking_account.rb'
	def play
		bank_account=BankAccount.new("Jodie's account", 333, 1000)
		checking_account=CheckingAccount.new("Jodie's account", 333, 1000, 50)
		p bank_account
		bank_account.deposit(100)
		bank_account.withdrawal(500)
		p bank_account
		p bank_account.get_deposit_number
		p checking_account
		head :ok
	end
end
