class CreateSuperheroTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :superhero_teams do |t|
      t.belongs_to :superhero, null: false, foreign_key: true
      t.belongs_to :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
