ActiveAdmin.register Order do

  menu label: "訂單", priority: 1


  controller do
    def scoped_collection
      Order.where(store_id: current_admin_user.store_id)
    end
  end

  filter :id
  filter :order_num
  filter :phone
  filter :created_at

  index do
    selectable_column
    column :order_num
    column :name
    column :phone
    column :created_at
    actions
  end

  show do |order|
    attributes_table do
      row :order_num
      row :phone
      row :created_at

      attributes_table_for order.user do
        row :facebook_name
        row :link do
          link_to order.user.facebook_id, order.user.facebook_url, :target => '_blank'
        end
      end
    end

    if order.items and order.items.count > 0

      panel 'Order Detail' do
        ul
        order.items.each do |item|
          li item.food.name
        end

      end
    end
  end
end
