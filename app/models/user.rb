# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  # a user creates many haiku
  has_many :haiku, dependent: :destroy
  # a user favorites many haiku written by other users
  has_many :favorites, dependent: :destroy
end
