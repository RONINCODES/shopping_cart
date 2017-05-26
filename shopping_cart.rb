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
      sum += product.base_price * product.quantity
    end
    sum
  end

  def total_cost_after_tax
    sum = 0
    @products.each do |product|
      sum += (product.base_price * product.tax_rate + product.base_price) * product.quantity
    end
    sum
  end

   def most_expensive
     max_product = nil
     @products.each do |current_product|
       if max_product.nil?
         max_product = current_product
       end
       if current_product.total_price_each > max_product.total_price_each
         max_product = current_product
       end
       #current_product.total_cost_after_tax.max(1)
     end
     max_product.name
   end

  # def most_expensive
  #expensive = @products.max { |white_board, current_product| white_board.total_price <=> current_product.total_price }  #=> "albatross"
  #expensive.name
  #end


end






##############Testing Output#########################3
soap = Product.new("soap", 2.00,2)
rope = Product.new("rope", 3.00,2)
my_cart = ShoppingCart.new
puts soap.total_price

my_cart.add(soap)
my_cart.remove(rope)
my_cart.add(rope)

puts my_cart.inspect

puts my_cart.total_cost_pre_tax

puts my_cart.total_cost_after_tax

puts my_cart.most_expensive
