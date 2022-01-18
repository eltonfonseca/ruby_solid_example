require_relative 'product_with_tax'

class Motocicle < ProductWithTax
  IPVA_TAX = 0.03

  def initialize(name, price)
    super('Moto', name, price)
  end

  def tax(_discount)
    IPVA_TAX
  end
end
