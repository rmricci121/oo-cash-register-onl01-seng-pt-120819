require 'pry'
class CashRegister

  attr_accessor :total, :discount, :last_trans
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @item = []
    @last_trans = 0 
  end

  def add_item(title, price, quantity = 1)
  self.total += (price * quantity)
    while quantity > 0 
      @item << title
      quantity -= 1 
    end
  self.last_trans = (price * quantity)
  
  end
  
  def apply_discount
     @total = @total - (@discount *10) 
    if @discount > 0  
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @item
  end

  def void_last_transaction
    #binding.pry
    @total -= @last_trans 
  end
  
end
