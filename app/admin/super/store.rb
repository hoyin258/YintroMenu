ActiveAdmin.register Store, namespace: :super_admin do

  menu label: "店鋪"


  permit_params :name, :phone, :address, :latitude, :longitude, :open_hours, :description, :picture

  index do
    selectable_column
    id_column
    column :name
    column :phone
    column :address
    column :picture
    column :admin_user
    actions
  end

  filter :name
  filter :phone
  filter :address
  filter :created_at
  filter :updated_at
  filter :admin_user

  show do |store|
    attributes_table do
      row :name
      row :phone
      row :address
      row :latitude
      row :longitude
      row :open_hours
      row :description
      row :admin_user
      row :picture do
        image_tag(store.picture.url(:thumb)) unless store.picture.nil?
      end

      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs "Store Detail" do
      f.input :name
      f.input :phone
      f.input :address
      f.input :latitude
      f.input :longitude
      f.input :open_hours
      f.input :description
      f.input :picture, :required => false, :as => :file
    end
    f.actions
  end


end
