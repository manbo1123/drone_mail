class AddSpeedIdToDrones < ActiveRecord::Migration[5.2]
  def change
    add_column :drones, :speed_id, :integer, null: false
  end
end
