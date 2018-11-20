class RemoveHandleFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :handle, :string
  end
end
