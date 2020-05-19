require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
   coupons.each {|coupon|
     cart_of_discounted_items=[]
     if find_item_by_name_in_collection(cart, coupon[:item])
       cart.each { |item_in_cart|
         if item_in_cart[:item]==coupon[:item]
           item_in_cart[:count]=item_in_cart[:count]-coupon[:count]
           discounted_item={
             :name => "#{item_in_cart[:name]} W/COUPON",
             :price => coupon[:cost]/coupon[:num],
             :count => coupon[:num],
             :clearance => item_in_cart[:clearance]
           }
           cart_of_discounted_items << discounted_item
         end
       }
     end
   }
   cart=cart+cart_of_discounted_items
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
