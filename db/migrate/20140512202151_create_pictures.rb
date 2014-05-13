class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|

      t.attachment :file
      t.references :food, index:true
      t.timestamps

    end
  end
end
