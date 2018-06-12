require 'pry'

class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, :items

  def initialize(discount = nil)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)

    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if discount.nil?
      return "There is no discount to apply."
    else
      @total = @total - (@total * discount.to_f/100)
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction

  end
end
