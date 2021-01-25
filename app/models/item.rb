class Item < ApplicationRecord
    has_many :carts
    has_many :users, through: :carts 
    belongs_to :category
    has_many :favorites
    has_many :users, through: :favorites
end
