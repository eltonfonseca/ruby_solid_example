require_relative 'product'

class Beer < Product
  def initialize(name, price)
    super('Cerveja', name, price)
  end
end
