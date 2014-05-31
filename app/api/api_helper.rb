module APIHelper
  extend Grape::API::Helpers

  API_KEY ="AIzaSyC7eY_FTyMXrEtXcLxgZ2iItFTb8vcwbdo"


  def current_user
    token = params[:token]
    token = User.digest(token)
    @current_user ||= User.where(token: token).first
  end

  def authenticate!
    error!({error: "401 Unauthorized"}, 401) unless current_user
  end

  def send_push(registration_ids, message)
    gcm = GCM.new(API_KEY)
    options = {data: {message: message}}
    gcm.send_notification(registration_ids, options)
  end


  params :pagination do
    optional :page, type: Integer
    optional :per_page, type: Integer
  end


end