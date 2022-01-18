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
    @products.sum(&:price)
  end

  def total_ipva(discount)
    @products.sum do |product|
      product.is_a?(ProductWithTax) ? product.ipva(discount) : 0
    end
  end

  def total(discount)
    sub_total + total_ipva(discount)
  end
end
