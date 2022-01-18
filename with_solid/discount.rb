class Discount
  DISCOUNT_TAX = 0.02
  JANUARY = 1

  def initialize(month)
    @month = month
  end

  def apply
    DISCOUNT_TAX if @month == JANUARY
  end
end
