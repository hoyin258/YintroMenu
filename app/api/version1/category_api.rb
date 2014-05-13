module Version1
  class CategoryAPI < Grape::API
    helpers APIHelper

    resource :categories do

      desc 'Returns categories list'
      params do
        use :pagination
      end
      get do
        categories = Category
        .paginate(page: params[:page], per_page: params[:per_page])
        present :status, "Success"
        present :data, categories, with: Entities::Category
      end

      desc 'Returns Food list by category id'
      params do
        use :pagination
      end
      get ":id" do
        foods = Food
        .where(category: params[:id])
        .paginate(page: params[:page], per_page: params[:per_page])
        present :status, "Success"
        present :data, foods, with: Entities::Food
      end
    end
  end
end