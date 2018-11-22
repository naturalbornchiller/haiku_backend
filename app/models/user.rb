# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  # a user creates many haiku
  has_many :haiku
  # a user favorites many haiku written by other users
  has_many :favorites, dependent: :destroy
  has_many :haiku, through: :favorites, optional: true
end
