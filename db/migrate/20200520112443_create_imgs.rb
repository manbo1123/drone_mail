class CreateImgs < ActiveRecord::Migration[5.2]
  def change
    create_table :imgs do |t|
      t.string     :src,   null: false
      t.references :drone, null: false, foreign_key: true
      t.timestamps
    end
  end
end
