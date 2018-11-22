class AddUserToHaiku < ActiveRecord::Migration[5.2]
  def change
    add_reference :haiku, :user, foreign_key: true
  end
end
