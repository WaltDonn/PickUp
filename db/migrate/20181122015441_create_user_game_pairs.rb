class CreateUserGamePairs < ActiveRecord::Migration[5.1]
  def change
    create_table :user_game_pairs do |t|
      t.bool :maybe_going
      t.bool :is_creator
      t.integer :user_id
      t.integer :game_id

      t.timestamps
    end
  end
end
