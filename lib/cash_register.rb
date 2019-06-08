class CashRegister  
  
  attr_accessor :discount, :total 
  
  
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
    @last_transaction = 0 
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times {@items << title}
    @last_transaction = price * quantity
    
  end
  
  def apply_discount
    if self.discount > 0 
      @total -= (discount/100.0) * @total
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @last_transaction
    @total 
    
  end




end
