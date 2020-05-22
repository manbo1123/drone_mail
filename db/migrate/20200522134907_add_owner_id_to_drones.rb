class AddOwnerIdToDrones < ActiveRecord::Migration[5.2]
  def change
    remove_column :drones, :user_id, :references

  end
end
