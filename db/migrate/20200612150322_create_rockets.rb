class CreateRockets < ActiveRecord::Migration[6.0]
  def change
    create_table :rockets do |t|
      t.string :name
      t.integer :rocket_family_id
    end
  end
end
