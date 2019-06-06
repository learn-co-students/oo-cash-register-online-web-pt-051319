
class CashRegister

  @@items = []

  attr_accessor :total, :discount, :items, :price, :name

  def initialize(discount= 0)
    @items = []
    @name = name
    @total = 0
    @discount = discount
    @@items << self
  end

  def discount
    @discount

  end

  def add_item(name, price, quantity= 1)

    @price = price
    @total += price * quantity
    if quantity > 1
      count = 0
      while count  < quantity
        @items << name
        count += 1
      end
    else
      @items << name
    end

  end


  def apply_discount
    if @discount > 0
      @new_discount = (@price * @discount)/100
      @total -= @new_discount
  "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @price

  end
end
