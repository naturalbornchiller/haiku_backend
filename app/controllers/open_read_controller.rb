# frozen_string_literal: true

# Inherit from this class to allow unauthenticate access to read actions
class OpenReadController < ProtectedController
  READ_ACTIONS = %i[index show random myhaiku].freeze
  skip_before_action :authenticate, only: READ_ACTIONS
  before_action :set_current_user, only: READ_ACTIONS
end
