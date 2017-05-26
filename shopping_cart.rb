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

  def remove(product)
    @products.delete(product)
  end


  def total_cost_pre_tax
    sum = 0
    @products.each do |product|
      sum += product.base_price
    end
    sum
  end



end






##############Testing Output#########################3
soap = Product.new("soap", 2.00)
rope = Product.new("rope", 3.00)
my_cart = ShoppingCart.new
puts soap.total_price

my_cart.add(soap)
my_cart.remove(rope)
my_cart.add(rope)

puts my_cart.inspect

puts my_cart.total_cost_pre_tax
