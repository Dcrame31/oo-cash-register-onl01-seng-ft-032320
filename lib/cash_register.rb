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
    discount = @total.to_f*@discount/100
    after_discount = self.total - discount
    if @discount > 0
      "After the discount, the total comes to $#{after_discount}."
    else
      "There is no discount to apply"
    end
  end
  
  
  def items
   @cart.collect {|item, price| item}.flatten
  end
  

  def void_last_transaction
  end
end
