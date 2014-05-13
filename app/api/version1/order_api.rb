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

        order  = Order.create({
                         order_num: Time.now.strftime("%y%m%d%H%M%S").to_s + @current_user.id.to_s,
                         phone: params[:phone],
                         user: @current_user
                     })

        item_arr.each do |item|
          order.items << Item.find(item)
        end

        present :status, "Success"
        present :data, order, with: Version1::Entities::Order
      end

    end
  end
end
