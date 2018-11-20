class HaikuSerializer < ActiveModel::Serializer
  attributes :id, :title, :content
end
