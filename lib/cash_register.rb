class CashRegister
  attr_accessor :total, :list, :last_total, :last_list
  
  def initialize(discount = 0)
    @total = 0 
    @list = []
    @discount = discount 
  end
  def discount
    20
  end
  def add_item(thing, price, qty = 1)
    @total += price*qty
    qty_counter = qty
    while qty_counter >=1 
      @list << thing
      qty_counter -= 1 
    end
  end 
  def apply_discount
    if @discount != 0 
      @total -= @total*(@discount)/100  
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end 
  end
  def items
    @list 
  end 
  def void_last_transaction
  end
end
