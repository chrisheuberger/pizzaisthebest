class Pizza < ActiveRecord::Base
  has_many :toppings
end
