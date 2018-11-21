class FavoriteSerializer < ActiveModel::Serializer
  attributes :id
  has_one :haiku
  has_one :user
end
