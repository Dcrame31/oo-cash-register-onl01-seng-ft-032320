class CashRegister
  attr_accessor :total, :discount
  @@items = []
  
  def initialize
    @total = 0
    self.apply_discount
  end
  
  def add_item(title,price, quantity=1)
   item_price_total = price * quantity
  @@items << [title, item_price_total]
   @total += item_price_total
  end

  def apply_discount
    
  end
  
  
  def items
  end
  

  def void_last_transaction
  end
end
