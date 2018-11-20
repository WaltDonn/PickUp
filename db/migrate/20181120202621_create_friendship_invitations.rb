class CreateFriendshipInvitations < ActiveRecord::Migration[5.1]
  def change
    create_table :friendship_invitations do |t|
      t.integer :inviteeID
      t.integer :inviterID

      t.timestamps
    end
  end
end
