class CashRegister
  attr_accessor :total, :items, :discount, :last_transation

  def initialize(discount= 0)
    @total = 0
    @discount= discount
    @items= []
  end

  def add_item(item, cost, quantity= 1)
    self.total += cost * quantity
    quantity.times do
      items << item
    end
    self.last_transation = cost * quantity
  end

  def apply_discount
    if discount !=0
      self.total= (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total= self.total - self.last_transation
  end

end
