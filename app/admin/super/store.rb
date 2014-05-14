ActiveAdmin.register Store, namespace: :super_admin do

  menu label: "店鋪"


  permit_params :name, :phone, :address, :latitude, :longitude, :open_hours, :description, :image

  index do
    selectable_column
    id_column
    column :name
    column :phone
    column :address
    column :image
    column :admin_user
    actions
  end

  filter :name
  filter :phone
  filter :address
  filter :created_at
  filter :updated_at
  filter :admin_user

  form do |f|
    f.inputs "Store Detail" do
      f.input :name
      f.input :phone
      f.input :address
      f.input :latitude
      f.input :longitude
      f.input :open_hours
      f.input :description
      f.input :image

    end
    f.actions
  end


end
