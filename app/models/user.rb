class User < ApplicationRecord
    has_many :my_daycares
    has_many :daycares, through: :my_daycares
end
