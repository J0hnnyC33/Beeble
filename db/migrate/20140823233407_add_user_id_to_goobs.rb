class AddUserIdToGoobs < ActiveRecord::Migration
  def change
    add_column :goobs, :user_id, :integer
    add_index :goobs, :user_id
  end
end
