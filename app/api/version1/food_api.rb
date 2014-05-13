module Version1
  class ItemAPI < Grape::API
    helpers APIHelper

    
    resource :foods do

      desc 'Returns food list'
      params do
        use :pagination
      end
      get do
        foods = Food
        .paginate(page: params[:page], per_page: params[:per_page])
        present :status, "Success"
        present :data, foods, with: Entities::Item
      end

    end
  end
end