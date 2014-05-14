class AddStoreToAdmin < ActiveRecord::Migration
  def change
    add_column :admin_users, :store_id, :integer
    add_index :admin_users, :store_id
  end
end
