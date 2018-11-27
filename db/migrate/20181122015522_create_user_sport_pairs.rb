class CreateUserSportPairs < ActiveRecord::Migration[5.1]
  def change
    create_table :user_sport_pairs do |t|
      t.integer :user_id
      t.integer :sport_id

      t.timestamps
    end
  end
end
