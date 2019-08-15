class DaycareSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :rating, :review_count
end
