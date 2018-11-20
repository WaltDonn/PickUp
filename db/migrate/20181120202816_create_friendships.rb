class CreateFriendships < ActiveRecord::Migration[5.1]
  def change
    create_table :friendships do |t|
      t.integer :friend1ID
      t.integer :friend2ID

      t.timestamps
    end
  end
end
