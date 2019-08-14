class DaycareSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :rating, :reviews
end
