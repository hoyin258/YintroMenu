ActiveAdmin.register AdminUser, namespace: :super_admin do

  menu label: "管理員"

  permit_params :email, :password, :password_confirmation , :store_id

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    # column :store_id

    actions
  end

  # show do
  #     table_for admin_user do
  #       column :email
  #       # ...
  #     end
  # end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at
  filter :store_id

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation

      # f.input :store_id, :as => :select, :collection => Store.all

    end
    f.actions
  end

end
