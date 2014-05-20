ActiveAdmin.register Food do

  menu label: "食品", priority: 2

  permit_params :menu_number, :name, :description, :spicy, :picture, :category_id,
                items_attributes: [:id, :price, :size_id, :_destroy]

  controller do
    def scoped_collection
      Food.joins(category: :store).where("stores.id" => current_admin_user.store_id)
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
    column :picture
    actions
  end

  show do |food|
    attributes_table do
      row :category
      row :menu_number
      row :name
      row :description
      row :spicy
      row :picture do
        image_tag(food.picture.url(:thumb)) unless food.picture.nil?
      end
    end

    if food.items and food.items.count >0
      panel 'Price' do
        attributes_table_for food.items do
          row :id
          row :size
          rows :price
        end
      end
    end
  end

  form do |f|
    f.inputs "Food" do
      f.input :menu_number
      f.input :name
      f.input :description
      f.input :spicy
      f.input :picture, :as => :file, :required => false
      f.input :category, as: :select, collection: Category.where(store_id: current_admin_user.store_id)
      f.has_many :items, allow_destroy: true do |item|
        item.input :price
        item.input :size
      end
    end
    f.actions
  end

end
