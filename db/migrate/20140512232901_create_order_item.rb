class CreateOrderItem < ActiveRecord::Migration
  def change
    create_table :items_orders do |t|
      t.belongs_to :order
      t.belongs_to :item
      t.timestamps
    end
  end
end
