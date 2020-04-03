class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @cart = []
  end
  
  def add_item(item, price, quantity=1 )
    item_price_total = price * quantity
    items= [item] * quantity
    @cart << [items, item_price_total]
    @total += item_price_total
  end

  def apply_discount
    @total -= @total*@discount/100
    if @discount == 0
      "There is no discount to apply"
    else
      "After the discount, the total comes to $#{@total}."
    end
  end
  
  
  def items
   @cart.collect {|item, price| item}.flatten
  end
  

  def void_last_transaction
  end
end
