class ChangeColumnToNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :drones, :owner_id, null: false
  end
end
