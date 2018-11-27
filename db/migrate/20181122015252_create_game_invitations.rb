class CreateGameInvitations < ActiveRecord::Migration[5.1]
  def change
    create_table :game_invitations do |t|
      t.integer :inviter_id
      t.integer :invitee_id
      t.integer :game_id

      t.timestamps
    end
  end
end
