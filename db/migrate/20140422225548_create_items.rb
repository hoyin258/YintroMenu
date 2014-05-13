class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.decimal :price
      t.references :food, index: true
      t.references :size, index: true

      t.timestamps
    end
  end
end
