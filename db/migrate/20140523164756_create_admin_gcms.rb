class CreateAdminGcms < ActiveRecord::Migration
  def change
    create_table :admin_gcms do |t|
      t.string :registration
      t.references :admin_user, index: true

      t.timestamps
    end
  end
end
