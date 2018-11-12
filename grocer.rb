require "pry"

cart = [
  {"AVOCADO" => {:price => 3.0, :clearance => true }},
  {"AVOCADO" => {:price => 3.0, :clearance => true }},
  {"KALE"    => {:price => 3.0, :clearance => false}}
]

def consolidate_cart(cart)
  # code here
  cart.each_with_object({}) do |item, consol|
    item.each do |name, info|
      info.each do |attribute, value|
        # binding.pry
        consol[name] ||= info
        consol[name][attribute] = value
        consol[name][:count] ||= 0
        # consol[name][:count] += 1
        binding.pry
      end
    end
  end
end
consolidate_cart(cart)

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
