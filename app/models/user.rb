class User < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :daycares, through: :reviews

    validates :username, :email, :password, presence: true
    validates :email, uniqueness: true
end
