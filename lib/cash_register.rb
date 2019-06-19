require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(total = 0)
    @total = 0
    @discount = 20
  end

  def add_item(title, quantity,total)
    self.total += 1
  end
end
