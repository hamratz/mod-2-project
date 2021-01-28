class Item < ApplicationRecord
    belongs_to :category
    has_many :favorites
    has_many :users, through: :favorites

    def new_craves
        item_name = Item.all.map {|item| item.name}
        item_name.last(5)
    end

end
