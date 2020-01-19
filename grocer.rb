def find_item_by_name_in_collection(name, collection)
count=0
  while count < collection.size do 
    if collection[count][:item] === name
      return collection[count]
    end
    count+=1
  end
   nil
 end

def consolidate_cart(cart)
  array=[]
  count=0
  while count<cart.length do 
    #new_cart_array=[:count]
    new_cart_array=find_item_by_name_in_collection(cart[count][:item],array)
    if new_cart_array
      new_cart_array[:count]+=1
    else
      new_cart_array=cart[count]
      # add :count and set equal to 1 in cart array
      new_cart_array[:count]=1
      # add it to the new array from new_cart_array(old array)
      array.push(new_cart_array)
  end
  count+=1
end
array
end

def apply_coupons(cart, coupons)
  counter =0
  while counter<coupons.size do 
    cart_item=find_item_by_name_in_collection(coupons[counter][:item],cart)
   coupon_name="#{coupons[counter][:item]} W/COUPON"
   cart_item_with_coupon=find_item_by_name_in_collection(coupon_name,cart)
   if 
   
  end
  counter +=1
  end

end

def apply_clearance(cart)
  count=0
  while count<cart.size do 
    if cart[count][:clearance] === true
      cart[count][:price]*=0.8
      cart[count][:price].round(2)
    end
    count +=1
end
cart
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
