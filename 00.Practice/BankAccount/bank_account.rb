class BankAccount
	attr_reader :owner

	def initialize owner
		@owner = owner
		@transactions = []
		add_transaction("Beginning Balance", 0)
	end

	def credit description, amount
		add_transaction(description, amount)
	end

	def debit description, amount
		add_transaction(description, -amount)
	end

	def add_transaction description, amount
		@transactions.push(description: description, amount: amount)
	end

	def balance
		balance = 0.0
		@transactions.each do |transaction|
			balance += transaction[:amount]
		end
		balance
	end

	def print_register
		puts "#{owner}'s Bank Account"
		puts "-" * 40
		puts "Description".ljust(30) + "Amount".rjust(10)
		@transactions.each do |transaction|
			puts transaction[:description].ljust(30) + sprintf("%.2f", transaction[:amount]).rjust(10)
		end
		puts "-" * 40
		puts "Balance:".ljust(30) + "#{sprintf("%.2f", balance)}".rjust(10)
		puts "-" * 40
	end

	def to_s
		"Name: #{owner}, Balance: #{sprintf("%.2f", balance)}"
	end
end

ryans_account = BankAccount.new("Ryan")
ryans_account.credit("Paycheck", 100)
ryans_account.debit("Groceries", 40)
ryans_account.debit("Gas", 10.51)
ryans_account.print_register
