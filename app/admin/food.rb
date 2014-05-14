ActiveAdmin.register Food do

  menu label: "食品" ,priority: 2

  permit_params :menu_number, :name, :description, :spicy, :picture, :category_id

  controller do
    def scoped_collection
      current_admin_user.store.foods
    end
  end

  index do
    selectable_column
    id_column
    column :category
    column :menu_number
    column :name
    column :description
    column :spicy
    actions
  end

  form do |f|
    f.inputs "Food" do
      f.input :menu_number
      f.input :name
      f.input :description
      f.input :spicy
      f.input :picture
      f.input :category, as: :select, collection: Category.where(store_id: current_admin_user.store_id)
    end

    f.actions
  end

end
