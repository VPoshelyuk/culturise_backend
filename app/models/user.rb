class User < ApplicationRecord
    has_many :user_favorites
    has_many :events, through: :user_favorites
end
