module Version1
  class ItemAPI < Grape::API
    helpers APIHelper

    
    resource :items do

      desc 'Returns item list'
      params do
        use :pagination
      end
      get do
        items = Item
        .paginate(page: params[:page], per_page: params[:per_page])
        present :status, "Success"
        present :data, items, with: Entities::Item
      end

    end
  end
end