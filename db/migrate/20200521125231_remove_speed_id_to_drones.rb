class RemoveSpeedIdToDrones < ActiveRecord::Migration[5.2]
  def change
    remove_column :drones, :speed_id, :references
  end
end
