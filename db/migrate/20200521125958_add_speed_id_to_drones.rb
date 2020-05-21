class AddSpeedIdToDrones < ActiveRecord::Migration[5.2]
  def change
    remove_column :drones, :speed_id, :references
    add_column :drones, :speed_id, :integer, null: false
  end
end
