class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_num
      t.string :phone
      t.references :user, index: true

      t.timestamps
    end
  end
end
