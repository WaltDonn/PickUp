class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :time
      t.integer :max_size
      t.integer :curr_size
      t.string :description
      t.integer :location_id
      t.integer :sport_id

      t.timestamps
    end
  end
end
