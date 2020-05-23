class AddColumnUserIdToDrones < ActiveRecord::Migration[5.2]
  def change
    add_column :drones, :buyer_id, :integer
  end
end
