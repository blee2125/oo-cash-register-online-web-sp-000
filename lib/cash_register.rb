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

  end

  def void_last_transaction

  end

end
