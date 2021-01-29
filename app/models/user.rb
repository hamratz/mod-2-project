class User < ApplicationRecord
    has_many :favorites
    has_many :items, through: :favorites
    has_many :checkouts
    has_many :checkout_items, through: :checkouts, class_name: :item 
    # checkout_items is custom method name
    has_secure_password
    validates :name, uniqueness: true
end
