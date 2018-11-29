class CreateUserGamePairs < ActiveRecord::Migration[5.1]
  def change
    create_table :user_game_pairs do |t|
      t.boolean :maybe_going
      t.boolean :is_creator
      t.integer :user_id
      t.integer :game_id

      t.timestamps
    end
  end
end
