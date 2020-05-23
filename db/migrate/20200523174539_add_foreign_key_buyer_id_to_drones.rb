class AddForeignKeyBuyerIdToDrones < ActiveRecord::Migration[5.2]
  def change
    change_column :drones, :buyer_id, :bigint
    add_foreign_key :drones, :users, column: :buyer_id
  end
end
