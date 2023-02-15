class User < ApplicationRecord
    has_many :favorites
    has_many :sneakers, through: :favorites

    validates :email, presence:true
    validates :username, presence:true
    validates :password, presence:true
end
