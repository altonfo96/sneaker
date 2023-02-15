class Sneaker < ApplicationRecord
    has_many :favorites
    has_many :users, through: :favorites

    validates :price, presence:true
    validates :price, numericality: {greater_than: 0}
    validates :name, presence:true
    validates :image, presence:true
end
