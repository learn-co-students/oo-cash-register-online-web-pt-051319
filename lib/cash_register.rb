require 'pry'

class CashRegister

  attr_accessor :total, :items, :discount, :last_transaction

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = {}

  end

  def add_item(name,price,quantity=0)
        if quantity != 0
          @total += price *quantity
        else
          @total += price
        end

        if quantity > 0
          i = 0
            while i < quantity
              @items << name
              i+=1
            end
          else
            @items << name
        end
@last_transaction = Hash.new { |hash, key| hash[key] = name}
@last_transaction[:price]=price
  end

    def apply_discount
      if @discount == nil
         return "There is no discount to apply."
      end
        @total -= @total * @discount / 100
        msg = "After the discount, the total comes to $#{self.total.to_i}."
    end

    def title
      @items
    end

    def void_last_transaction
      @total -= @last_transaction[:price]
      @last_transaction.clear
      @total
    end

end
