class Haiku < ApplicationRecord
    belongs_to :author, class_name: 'User',
               foreign_key: :author_id
    # has_many :favorites, dependent: destroy
    # has_many :users, through: :favorites, optional: true
end
