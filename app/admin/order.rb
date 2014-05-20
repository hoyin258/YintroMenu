ActiveAdmin.register Order do

  menu label: "訂單" ,priority: 1

  scope_to :current_admin_user
  permit_params :name, :description, :store_id

  before_create do |category|
    category.store_id = current_admin_user.store_id
  end

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :created_at
    column :updated_at
    actions
  end

  filter :name
  filter :description
  filter :created_at
  filter :updated_at

  form do |f|
    f.inputs "Category" do
      f.input :name
      f.input :description
    end
    f.actions
  end

end
