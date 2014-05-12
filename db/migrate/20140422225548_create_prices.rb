class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.decimal :price
      t.references :item, index: true
      t.references :unit, index: true

      t.timestamps
    end
  end
end
