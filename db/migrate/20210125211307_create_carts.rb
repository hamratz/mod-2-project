class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.integer :item_id
      t.integer :user_id
      t.float :total_price
      t.integer :total_quantity

      t.timestamps
    end
  end
end
