class RemoveColumnFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_columns :users, :birthday, :post_code, :prefecture_code, :city, :home_number, :building_name
  end
end