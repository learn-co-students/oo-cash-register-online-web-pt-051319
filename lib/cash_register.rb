class CashRegister
  attr_accessor :name, :total, :title, :price 
  attr_reader :discount, :quantity 
  @@items = []
  
  def initialize (discount=nil)
    @discount = discount
    @total = 0
  end
  
 
  def add_item(title, price, quantity=1)
    @title = title 
      self.total += price * quantity
  end 
  
  def apply_discount
    #discount is percentage
    #total_discount = 
    self.total = self.total - @discount.to_i
     "After the discount, the total comes to $#{self.total}."
    
  end 
  
  def items
    @@items << @title 
  end 

end   
