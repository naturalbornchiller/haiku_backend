class Haiku < ApplicationRecord
    # haiku is created by author
    belongs_to :author, class_name: 'User', foreign_key: 'user_id'
    # haiku is favorited by many users
    has_many :favorites, dependent: :destroy

    # split haiku into 'on' (syllables)
    # def content
    #     require 'text/hyphen'
    #     h = Text::Hyphen.new
    #     syllablized_words = content.to_a.map {|word| h.hyphenate word}
    # end
end
