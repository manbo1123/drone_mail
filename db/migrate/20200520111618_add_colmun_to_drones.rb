class AddColmunToDrones < ActiveRecord::Migration[5.2]
  def change
    add_column :drones, :size_id, :integer, null: false
    add_column :drones, :weight_id, :integer, null: false
    add_column :drones, :load_id, :integer, null: false
    add_column :drones, :space_id, :integer, null: false
  end
end
