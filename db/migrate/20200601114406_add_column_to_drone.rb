class AddColumnToDrone < ActiveRecord::Migration[5.2]
  def change
    add_column :drones, :maker_id, :bigint
    add_foreign_key :drones, :makers, column: :maker_id

    add_column :drones, :station_id, :bigint
    add_foreign_key :drones, :stations, column: :station_id
  end
end
