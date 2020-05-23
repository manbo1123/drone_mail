class CreateDroneFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :drone_features do |t|
      t.integer :feature_id, null: false
      t.references :drone, foreign_key: true, null: false
      t.timestamps
    end
  end
end
