def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs

  # using .find enumerable
  # collection.find {|item| item[:item] == name}

  collection_index = 0
  while collection_index < collection.length do
    if collection[collection_index][:item] == name
      return collection[collection_index]
    end
    collection_index += 1
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

  # solution 1:
  # new_cart = []
  # cart_index = 0
  # while cart_index < cart.size do
  #   if new_cart.size < 1
  #     cart[cart_index][:count] = 1
  #     new_cart << cart[cart_index]
  #   else
  #     new_cart_index = 0
  #     match_found = false
  #     while new_cart_index < new_cart.size do
  #       if new_cart[new_cart_index][:item] == cart[cart_index][:item]
  #         new_cart[new_cart_index][:count] += 1
  #         match_found = true
  #       end
  #       new_cart_index += 1
  #     end
  #     if !match_found
  #       cart[cart_index][:count] = 1
  #       new_cart << cart[cart_index]
  #     end
  #   end
  #   cart_index += 1
  # end
  # new_cart

  # solution 2:
  new_cart = []
  cart_index = 0
  while cart_index < cart.size do
    item = find_item_by_name_in_collection(cart[cart_index][:item], new_cart)
    if item
      new_cart_index = 0
      while new_cart_index < new_cart.size do
        if new_cart[new_cart_index][:item] == cart[cart_index][:item]
          new_cart[new_cart_index][:count] += 1
        end
        new_cart_index += 1
      end
    else
      cart[cart_index][:count] = 1
      new_cart << cart[cart_index]
    end
    cart_index += 1
  end
  new_cart

end


  