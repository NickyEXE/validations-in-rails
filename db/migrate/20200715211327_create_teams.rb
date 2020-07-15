class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.integer :main_character_id
      t.integer :cameo_character_id

      t.timestamps
    end
  end
end
