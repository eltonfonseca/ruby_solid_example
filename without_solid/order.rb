require 'securerandom'

class Order
  def initialize
    @code = SecureRandom.hex(10)
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def sub_total
    sum = 0
    for product in @products
      sum = sum + product.price
    end

    sum
  end

  def total_ipva
    total = 0

    for product in @products
      if product.category == 'Carro'
        total = total + (product.price * 0.04)
      end

      if product.category == 'Moto'
        total = total + (product.price * 0.03)
      end

      if product.category == 'Caminhão'
        total = total + (product.price * 0.02)
      end
    end

    total
  end

  def total
    sub_total + total_ipva
  end
end
