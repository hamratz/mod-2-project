class User < ApplicationRecord
    has_many :favorites
    has_many :items, through: :favorites
    has_many :checkouts
    has_many :checkout_items, through: :checkouts, class_name: :item 
    # checkout_items is custom method name
    has_secure_password
    validates :name, uniqueness: true
    validates :password, length: { minimum: 7 }
    validates :first_name, :last_name, :name, :email, :password, :password_confirmation, :address, :city, :state, :zip_code, presence: true
end
