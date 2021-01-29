class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :password_digest
      
      t.timestamps
    end
  end
end
