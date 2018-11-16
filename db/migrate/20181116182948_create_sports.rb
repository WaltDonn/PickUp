class CreateSports < ActiveRecord::Migration[5.1]
  def change
    create_table :sports do |t|
      t.string :title
      t.string :icon

      t.timestamps
    end
  end
end
