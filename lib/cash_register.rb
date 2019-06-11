require 'pry'

class CashRegister

  attr_accessor :cash_register, :cash_register_with_discount

  def initialize(total =0 )
    @total = total
    self.cash_register_with_discount(int)
    binding.pry
  end

end
