def consolidate_cart(cart)
  # code here
  cart.each_with_object({}) do |item, consol|
    item.each do |name, info|
      info.each do |attribute, value|
        consol[name] ||= {}
        consol[name][attribute] ||= value
        consol[name][:count] ||= 1
        consol[name][:count] += 1
      end
    end
  end
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
