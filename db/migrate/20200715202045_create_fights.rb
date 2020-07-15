class CreateFights < ActiveRecord::Migration[6.0]
  def change
    create_table :fights do |t|
      t.integer :aggressor_id, null: false
      t.integer :defender_id, null: false

      t.timestamps
    end
  end
end
