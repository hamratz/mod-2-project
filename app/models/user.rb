class User < ApplicationRecord
    has_many :favorites
    has_many :items, through: :favorites
    has_many :checkouts

    has_secure_password
    validates :name, uniqueness: true
end
