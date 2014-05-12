class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :menu_id
      t.string :name
      t.text :description
      t.boolean :spicy
      t.text :image
      t.references :category, index: true

      t.timestamps
    end
  end
end
