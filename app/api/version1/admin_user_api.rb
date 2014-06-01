module Version1
  class AdminUserAPI < Grape::API
    helpers APIHelper

    namespace :admin_user do


      desc "Registration for the device"
      params do
        requires :email, type: String
        requires :password, type: String
        requires :gcm_id, type: String
      end
      post do
        admin_user = AdminUser.find_by_email(params[:email])
        if admin_user.valid_password?(params[:password])
          admin_user.admin_gcms.where(registration: params[:gcm_id]).first_or_create
          present :status, "Success"
        else
          error!({error: "401 Unauthorized"}, 401)
        end
      end


      desc 'Returns all order'
      params do
        requires :email, type: String
        requires :password, type: String
        use :pagination
      end
      get "orders" do
        admin_user = AdminUser.find_by(email: params[:email])
        if admin_user.valid_password?(params[:password])
          present :status, "Success"
          present :data,  Order.by_store_id(admin_user.store_id), with: Entities::Order

        else
          error!({error: "401 Unauthorized"}, 401)
        end
      end

      desc "Received Order"
      params do
        requires :email, type: String
        requires :password, type: String
        use :pagination
      end
      post "orders/:id/received" do
        admin_user = AdminUser.find_by(email: params[:email])
        if admin_user.valid_password?(params[:password])
          order = Order.find(params[:id])
          order.received_order
          order.save

          send_push [order.user.gcm], "Received. We're processing your order right now."
          present :status, "Success"
        else
          error!({error: "401 Unauthorized"}, 401)
        end
      end

      desc "Made Order"
      params do
        requires :email, type: String
        requires :password, type: String
        use :pagination
      end
      post "orders/:id/made" do
        admin_user = AdminUser.find_by(email: params[:email])
        if admin_user.valid_password?(params[:password])
          order = Order.find(params[:id])
          order.made_order
          order.save

          send_push [order.user.gcm], "Your order is ready for pick up."
          present :status, "Success"
        else
          error!({error: "401 Unauthorized"}, 401)
        end
      end

    end
  end
end