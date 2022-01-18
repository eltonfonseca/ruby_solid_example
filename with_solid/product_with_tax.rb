require_relative 'product'

class ProductWithTax < Product
  def initialize(category, name, price)
    @category = category
    @name = name
    @price = price
  end

  def tax(_discount)
    raise 'Not implemented!'
  end

  def ipva(discount)
    price * tax(discount)
  end
end
