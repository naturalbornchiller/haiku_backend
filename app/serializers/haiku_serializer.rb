class HaikuSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :author

  def author
    User.find(self.object.user_id).username
  end
end
