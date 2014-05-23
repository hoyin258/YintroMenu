module Version1
  class OrderAPI < Grape::API


    resource :orders do

      desc "Create Order"
      params do
        requires :items, type: String
        requires :phone, type: String
      end
      post do
        authenticate!

        item_arr = params[:items].split(/\s*,\s*/).map {|char| char.to_i }

        order  = Order.new({
                         order_num: Time.now.strftime("%y%m%d%H%M%S").to_s + @current_user.id.to_s,
                         phone: params[:phone],
                         user: @current_user
                     })

        order.store_id = Item.find(item_arr.first).food.category.store.id
        item_arr.each do |item|
          order.items << Item.find(item)
        end
        order.save

        order.store.admin_user.send_push

        present :status, "Success"
        present :data, order, with: Version1::Entities::Order
      end

    end
  end
end
