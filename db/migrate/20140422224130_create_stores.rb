class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :phone
      t.text :address
      t.decimal :latitude
      t.decimal :longitude
      t.text :open_hours
      t.text :description
      t.text :image

      t.timestamps
    end


  end
end
