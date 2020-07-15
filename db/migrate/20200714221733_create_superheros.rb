class CreateSuperheros < ActiveRecord::Migration[6.0]
  def change
    create_table :superheros do |t|
      t.string :name
      t.string :power
      t.string :weakness
      t.integer :power_level
      t.boolean :good

      t.timestamps
    end
  end
end
