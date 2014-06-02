module Version1
  class StoreAPI < Grape::API
    helpers APIHelper

    resource :stores do

      desc 'Returns store detail by store id'
      get ":id" do
        present :status, "Success"
        present :data, Store.find(params[:id]), with: Entities::Store
      end


      desc 'Returns all food by store id'
      get ":id/foods" do
        categories = Category.where(store_id: params[:id]).order(id: :asc)
        foods = Food.by_store_id(params[:id])

        cache(key: "api:foods:#{params[:id]}", expires_in: 1.days) do
          present :status, "Success"
          present :foods, foods, with: Entities::Food
          present :categories, categories, with: Entities::Category
        end
      end

    end
  end
end