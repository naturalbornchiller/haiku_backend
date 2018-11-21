# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :haiku
  # has_many :favorites, dependent: destroy
  # has_many :haiku, through: :favorites, optional: true
end
