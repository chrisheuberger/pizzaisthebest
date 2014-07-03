class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.string :name
      t.string :url
      t.integer :diameter

      t.timestamps
    end
  end
end
