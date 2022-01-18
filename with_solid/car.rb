require_relative 'product_with_tax'
require_relative 'discount'

class Car < ProductWithTax
  IPVA_TAX = 0.04

  def initialize(name, price)
    super('Carro', name, price)
  end

  def tax(discount)
    return IPVA_TAX - discount.apply if discount.apply.is_a?(Float)
    
    IPVA_TAX
  end
end
