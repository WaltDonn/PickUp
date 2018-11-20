class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :password
      t.string :password_confirmation
      t.string :bio
      t.integer :age
      t.boolean :time_dist
      t.integer :game_in_range
      t.string :curr_location

      t.timestamps
    end
  end
end
