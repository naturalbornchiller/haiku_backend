class Haiku < ApplicationRecord
    # haiku is created by author
    belongs_to :author, class_name: 'User',
                foreign_key: :author_id
    # haiku is favorited by many users
    has_many :favorites, dependent: :destroy
    has_many :upvoters, class_name: 'User',
                through: :favorites, optional: true
end
