class CreateRocketFamilies < ActiveRecord::Migration[6.0]
  def change
    create_table :rocket_families do |t|
      t.string :name
      t.string :abbreviation

      t.timestamps
    end
  end
end
