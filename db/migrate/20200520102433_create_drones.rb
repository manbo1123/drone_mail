class CreateDrones < ActiveRecord::Migration[5.2]
  def change
    create_table :drones do |t|
      t.string     :name,         null: false
      t.text       :introduction, null: false
      t.integer    :price,        null: false
      t.integer    :area,         null: false
      t.integer    :status,       default: 0

      t.timestamps
    end
  end
end
