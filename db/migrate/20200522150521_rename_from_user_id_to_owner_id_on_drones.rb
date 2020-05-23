class RenameFromUserIdToOwnerIdOnDrones < ActiveRecord::Migration[5.2]
  def change
    rename_column :drones, :user_id, :owner_id
  end
end
