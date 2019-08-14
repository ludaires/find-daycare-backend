class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
  # has_many :my_daycares
  # has_many :daycares, through: :my_daycares
end
