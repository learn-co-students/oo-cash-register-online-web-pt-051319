require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :last_total
    
  def initialize(discount = 0)
    @total = 0
    self.discount = discount
    @items = []
  end 
  
  def add_item(title, price, quantity = 1)
    @last_total = @total
    @total = @total + (price * quantity)
    @items.fill(title, @items.size, quantity)
  end
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else @total = @total - (@total * @discount/100)
      return "After the discount, the total comes to $#{@total}."
    end
  end
  
  def items
    @items
  end 
  
  def void_last_transaction
    @total = @last_total
  end  

end  
