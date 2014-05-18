module Version1
  class StoreAPI < Grape::API
    helpers APIHelper

    resource :stores do

      desc 'Returns store detail by store id'
      get ":id" do
        present :status, "Success"
        present :data, Store.find(params[:id]), with: Entities::Store
      end

      desc 'Returns categories list by store id'
      params do
        use :pagination
      end
      get ":id/categories" do
        categories = Category
        .where(store_id: params[:id])
        .paginate(page: params[:page], per_page: params[:per_page])
        present :status, "Success"
        present :data, categories, with: Entities::Category
      end

    end
  end
end