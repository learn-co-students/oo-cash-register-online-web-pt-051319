require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def self.total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total = self.total + (price * quantity)
    quantity.times { @items << title }
    @last_transaction = price * quantity
  end

  def apply_discount
    if @discount > 0
      @total = self.total - self.total * @discount/100.0
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end
end
