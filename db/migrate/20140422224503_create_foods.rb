class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :menu_id
      t.string :name
      t.text :description
      t.boolean :spicy
      t.text :picture
      t.references :category, index: true

      t.timestamps
    end
  end
end
