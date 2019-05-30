require 'pry'

class CashRegister

	attr_accessor :total, :employee_discount, :cart, :last_item

	def initialize( employee_discount = 0.0 )
		@total = 0.0
		@employee_discount = employee_discount
		@cart = []
	end

	def discount
		@employee_discount
	end

	def add_item(title, price, qty = 1)
		qty.times {cart << title}
		@total += (price * qty)
		@last_item = [title, price, qty]
	end

	def apply_discount
		@total = @total * (1.0 - @employee_discount/100.0)
		@employee_discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total.to_s.gsub(/\.0+$/, "")}."
	end

	def items
		@cart
	end

	def void_last_transaction
		@total -= @last_item[1] * @last_item[2]
		@cart = @cart[0..-@last_item[2]]
	end

end