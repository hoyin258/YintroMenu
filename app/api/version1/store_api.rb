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
        .order(id: :asc)

        cache(key: "api:categories:#{params[:id]}", expires_in: 1.minutes) do
          present :status, "Success"
          present :data, categories, with: Entities::Category
        end
      end


      desc 'Returns all food by store id'
      get ":id/foods" do
        foods = Food.by_store_id(params[:id])

        cache(key: "api:foods:#{params[:id]}", expires_in: 1.minutes) do
          present :status, "Success"
          present :data, foods, with: Entities::Food
        end
      end


    end
  end
end