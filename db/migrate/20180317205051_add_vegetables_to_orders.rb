class AddVegetablesToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :tomato, :boolean, default: false
    add_column :orders, :cucumber, :boolean, default: false
    add_column :orders, :carrot, :boolean, default: false
    add_column :orders, :cabbage, :boolean, default: false
    add_column :orders, :broccoli, :boolean, default: false
    add_column :orders, :spinach, :boolean, default: false
    add_column :orders, :kale, :boolean, default: false
    add_column :orders, :celery, :boolean, default: false
    add_column :orders, :greenpepper, :boolean, default: false
    add_column :orders, :okra, :boolean, default: false
    add_column :orders, :corn, :boolean, default: false
    add_column :orders, :squash, :boolean, default: false
    add_column :orders, :onion, :boolean, default: false
  end
end
