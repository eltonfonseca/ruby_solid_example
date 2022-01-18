require_relative 'product_with_tax'

class Truck < ProductWithTax
  IPVA_TAX = 0.02

  def initialize(name, price)
    super('Caminhão', name, price)
  end

  def tax(_discount)
    IPVA_TAX
  end
end
