class Item < ApplicationRecord
    belongs_to :category
    has_many :favorites
    has_many :users, through: :favorites
    # helper_method :new_craves

    def new_craves
        
        Item.all.last(5)
    end

end
