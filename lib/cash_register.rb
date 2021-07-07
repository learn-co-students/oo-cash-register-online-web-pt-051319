
require 'pry'
class CashRegister
  attr_accessor :total, :discount, :qty, :price
  
  @@items = []

  def initialize (discount=0)
   @total = 0
   @discount = discount
   @@items.clear
 
  end

  def add_item (title, price, qty=1)
   @price = price
   @qty = qty
   @total += price*qty
   
    qty.times do
      @@items << title
    end
  end

  def apply_discount
    if discount == 0
       message = "There is no discount to apply."
       message
    else
     @total = @total*(100-discount)/100
      message = "After the discount, the total comes to $#{@total}."
      message
    end
  end

  def items
   @@items
  end

  def void_last_transaction
    @total = (@total - price*qty)
  end

end