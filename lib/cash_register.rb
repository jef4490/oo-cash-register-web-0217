require 'pry'
class CashRegister
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount
  end

  def total=(total)
    @total = total
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    @latest = price*quantity
    @total = @total + @latest
    quantity.times do
      @items.push(item)
    end
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
      @total = (@total - (@total*(discount.to_f/100))).to_i
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @latest
  end

end
