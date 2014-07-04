class AddPizzaRefToToppings < ActiveRecord::Migration
  def change
    add_reference :toppings, :pizza, index: true
  end
end
