class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :info
      t.string :recipe
      t.boolean :excess

      t.timestamps
    end
  end
end
