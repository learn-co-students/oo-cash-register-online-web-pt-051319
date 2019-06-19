require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items, :apply_discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title , price , quantity=1)
    self.total += price * quantity
  end

  def apply_discount
    # total => total - (total x (discount/100))
    @total = @total - (@total) * (@discount/100.to_f)
    


  end

end
