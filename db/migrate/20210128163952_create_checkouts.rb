class CreateCheckouts < ActiveRecord::Migration[6.1]
  def change
    create_table :checkouts do |t|
      t.string :address
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :zip_code
      t.integer :user_id
      t.integer :item_id

      t.timestamps
    end
  end
end
