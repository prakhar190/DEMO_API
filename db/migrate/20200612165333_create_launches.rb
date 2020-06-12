class CreateLaunches < ActiveRecord::Migration[6.0]
  def change
    create_table :launches do |t|
      t.string :name
      t.integer :rocket_id

      t.timestamps
    end
  end
end
