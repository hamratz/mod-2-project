class User < ApplicationRecord
    has_many :favorites
    has_many :items, through: :favorites
    has_many :checkouts

    has_secure_password
    validates :name, uniqueness: true
    validates :password, length: { minimum: 7 }
    validates :name, :password, :password_confirmation, presence: true
    # validates :first_name, :last_name, :name, :email, :password, :password_confirmation, :address, :city, :state, :zip_code, presence: true

end
