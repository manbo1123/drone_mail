class ChangeColumnToAllowNull < ActiveRecord::Migration[5.2]
  def change
    change_column :stations, :ancestry, :string, null: true
  end
end
