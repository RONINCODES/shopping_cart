#Shopping Cart and Product Project

###########REQUIRE#############################
require_relative 'product'

################Class##############################
class ShoppingCart








################Initialize_Method######################
  def initialize


    @products =[]
  end





##############Class Methods###################





##############Instance Methods################
  def add(product)
    @products << product
  end






end






##############Testing Output#########################3
soap = Product.new("soap", 2.00)
my_cart = ShoppingCart.new
puts soap.total_price

my_cart.add(soap)

puts my_cart.inspect
