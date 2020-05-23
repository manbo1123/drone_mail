class AddColumnToDrones < ActiveRecord::Migration[5.2]
  def change
    remove_column :drones, :owner_id, foreign_key: true
    remove_column :drones, :user_id, foreign_key: true
    add_reference :drones, :user, null: false, foreign_key: true
  end
end
