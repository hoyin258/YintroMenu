module Version1
  class UserAPI < Grape::API
    helpers APIHelper

    resource :users do

      desc "Get Token from facebook"
      params do
        requires :api_key, type: String, desc: "API Key"
        requires :facebook_name, type: String, desc: "Facebook Name"
        requires :facebook_id, type: String, desc: "Facebook Id"
        requires :gcm, type: String, desc: "Gcm Id"
        optional :email, type: String, desc: "Email"
        optional :name, type: String, desc: "User Name"
        optional :facebook_accesstoken, type: String, desc: "Facebook access token"
      end
      post do
        if params[:api_key] == 'android' or
            params[:api_key] == 'ios'
          user = User.find_by_facebook_id(params[:facebook_id])
          unless user
            user = User.new(
                facebook_name: params[:facebook_name],
                facebook_id: params[:facebook_id],
                gcm: params[:gcm],
            )
            user.email = params[:facebook_id].to_s + "@facebook.com" if params[:email].present?
            user.name = params[:facebook_name].to_s if params[:name].present?
            user.facebook_accesstoken = params[:facebook_accesstoken].to_s if params[:facebook_accesstoken].present?
            user.password = "facebook"
          end
          token = User.new_token
          user.update_attribute(:token, User.digest(token))
          present :status, "Success"
          present :data, token
        else
          error!({error: "401 Incorrect API Key, Please request API Key from the admin"}, 401)
        end
      end


      desc 'Returns order list by user id'
      params do
        use :pagination
      end
      get ':id/orders' do

        orders = Order.where(user_id: params[:id])
        .paginate(page: params[:page], per_page: params[:per_page])
        .order(updated_at: :desc)

        present :status, "Success"
        present :data, orders, with: Entities::Order
      end

    end
  end
end
