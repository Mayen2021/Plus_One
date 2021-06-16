class AddUserIdsToChatRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :chatrooms, :activity_owner_id, :integer, foreign_key: true, index: true
  end
end
