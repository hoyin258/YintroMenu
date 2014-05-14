ActiveAdmin.register Item do

  menu label: "價錢" , priority: 3


  permit_params :price, :food_id, :size_id

  controller do
    def scoped_collection

      Item.joins(food: {category: :store}).where("stores.id" => current_admin_user.store_id)

    end
  end

  index do
    selectable_column
    id_column
    column :food
    column :size
    column :price
    actions
  end

  form do |f|
    f.inputs "Food" do
      f.input :food  , as: :select, collection: current_admin_user.store.foods
      f.input :size
      f.input :price
    end

    f.actions
  end
end
