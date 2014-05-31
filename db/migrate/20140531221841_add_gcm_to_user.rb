class AddGcmToUser < ActiveRecord::Migration
  def change
    add_column :users, :gcm, :string
  end
end
