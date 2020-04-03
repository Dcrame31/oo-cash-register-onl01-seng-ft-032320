class CashRegister
  attr_accessor :total, :discount
  @@items = []
  
  def initialize
    @total = 0
    self.apply_discount
  end
  
  def add_item(item, price, quantity=1 )
    item_price_total = price * quantity
    items= [item] * quantity
    @@items << [items, item_price_total]
    @total += item_price_total
  end

  def apply_discount
    discount = @total.to_f*20/100
    after_discount = self.total - discount
    puts "After the discount, the total comes to $#{after_discount}."
    self.total = 0
  end
  
  
  def items
   @@items.collect {|item, price| item}.flatten
  end
  

  def void_last_transaction
  end
end
