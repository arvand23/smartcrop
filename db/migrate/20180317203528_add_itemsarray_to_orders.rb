class AddItemsarrayToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :itemsarray, :text, array: true
  end
end
