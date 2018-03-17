class AddItemsarrayToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :itemsarray, :text, array: true
  end
end
