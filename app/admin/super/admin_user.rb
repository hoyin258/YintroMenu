ActiveAdmin.register AdminUser, namespace: :super_admin do

  menu label: "管理員" , priority: 2

  permit_params :email, :password, :password_confirmation , :store_id

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column :store

    actions
  end

  show do |admin_user|
    attributes_table do
      row :email
      row :current_sign_in_at
      row :sign_in_count
      row :created_at
      row :store
    end

    if admin_user.admin_gcms and admin_user.admin_gcms.count >0
      panel 'GCM' do
        attributes_table_for admin_user.admin_gcms do
          row :registration
        end
      end
    end
  end



  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at
  filter :store

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :store
    end
    f.actions
  end

end
