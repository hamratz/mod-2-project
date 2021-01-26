class User < ApplicationRecord
    has_many :favorites
    has_many :items, through: :favorites
end
