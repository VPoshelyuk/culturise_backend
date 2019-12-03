class User < ApplicationRecord
    validates :username, uniqueness: true
    validates :password, length: { minimum: 6}
    has_secure_password
    has_many :user_favorites
    has_many :events, through: :user_favorites
end
