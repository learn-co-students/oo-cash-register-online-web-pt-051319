class CashRegister
  attr_accessor :total, :discount, :price
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @grocery_list = []
  end
  
  def add_item(item, price, quantity = 1)
    @price = price
    @grocery_list.concat([item]*quantity)
    @total += (price*quantity)
  end
  
  def apply_discount
      if @discount == 0
     return "There is no discount to apply."
      end
      @total -= @total*@discount/100
   return  "After the discount, the total comes to $#{total}."
  end
  
  def items 
    @grocery_list
  end
  
  def void_last_transaction
    @total -= @price
  end
end
