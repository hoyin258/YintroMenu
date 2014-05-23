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
          present :status, "Fail"
        end
      end

    end
  end
end