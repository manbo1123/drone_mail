class AddColumnToDrones < ActiveRecord::Migration[5.2]
  def change
    add_reference :drones, :user, null: false, foreign_key: true
  end
end
