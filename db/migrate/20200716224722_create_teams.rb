class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :locality
      t.integer :established

      t.timestamps
    end
  end
end
