class RenameFromUserIdToOwnerIdOnDrones < ActiveRecord::Migration[5.2]
  def change
    remove_column :drones, :owner_id
    rename_column :drones, :user_id, :owner_id
  end
end
