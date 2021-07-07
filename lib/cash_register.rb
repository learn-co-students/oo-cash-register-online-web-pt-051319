class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0) #sets discount default value to zero 
    @total = 0 
    @discount = discount #sets instance variable = discount argument
    @items = []   
  end
  
  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity  #increments total 
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
  end
  
  def apply_discount
    if discount == 0 
      "There is no discount to apply."
    else 
      @total = @total - @total * @discount/100
        "After the discount, the total comes to $#{@total}."
    end
  end
  
  def void_last_transaction 
    @total = @total - @price 
  end
end
