class AddTeamIdToSuperhero < ActiveRecord::Migration[6.0]
  def change
    add_column :superheros, :team_id, :integer
  end
end
