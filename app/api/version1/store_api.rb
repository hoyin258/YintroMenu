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
        present :status, "Success"
        present :data, categories, with: Entities::Category
      end


      desc 'Returns all food by store id'
      get ":id/foods" do
        foods = Food.by_store_id(params[:id])

        cache(key: "api:posts:#{params[:id]}", expires_in: 1.minutes) do
          present :status, "Success"
          present :data, foods, with: Entities::Food
        end
      end


      desc 'Returns all order by store id'
      params do
        requires :email, type: String
        requires :password, type: String
      end
      get ":id/orders" do
        admin_user = AdminUser.find_by(email: params[:email], store_id: params[:id])
        if admin_user.valid_password?(params[:password])
          present :status, "Success"
          present :data, Order.by_store_id(params[:id]), with: Entities::Order
        else
          error!({error: "401 Unauthorized"}, 401)
        end
      end

    end
  end
end