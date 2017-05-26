#Shopping Cart and Product Project

##########REQUIRE?##################






################Class##############################
class Product

  attr_reader :base_price, :tax_rate


################Initialize_Method######################
  def initialize(name, base_price)
    @name = name
    @base_price = base_price
    @tax_rate = 0.13

  end





##############Class Methods###################





##############Instance Methods################
  def total_price
    @base_price * @tax_rate + @base_price
  end



end
