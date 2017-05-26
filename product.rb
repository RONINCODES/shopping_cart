#Shopping Cart and Product Project

##########REQUIRE?##################






################Class##############################
class Product
  @@import_tax = 0.25
  @@tax_exempt = 0.00



  attr_reader :base_price, :tax_rate, :name
  attr_accessor :quantity



################Initialize_Method######################
  def initialize(name, base_price, quantity = 1)
    @name = name
    @base_price = base_price
    @tax_rate = 0.13
    @quantity = quantity

  end





##############Class Methods###################





##############Instance Methods################
  def total_price
    (@base_price * @tax_rate + @base_price) * @quantity
  end

  def total_price_each
    (@base_price * @tax_rate + @base_price)
  end



end
