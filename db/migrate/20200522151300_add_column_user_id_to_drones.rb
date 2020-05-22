class AddColumnUserIdToDrones < ActiveRecord::Migration[5.2]
  def change
    add_reference :drones, :user, foreign_key: true
    rename_column :drones, :user_id, :buyer_id
  end
end
