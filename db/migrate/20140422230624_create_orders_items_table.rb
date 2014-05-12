class CreateOrdersItemsTable < ActiveRecord::Migration
  def change
    create_table :orders_items_tables do |t|
      t.references :order
      t.references :item

    end
  end
end
