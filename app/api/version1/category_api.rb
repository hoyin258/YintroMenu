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

      desc 'Returns Item list by category id'
      params do
        use :pagination
      end
      get ":id" do
        items = Item
        .where(category: params[:id])
        .paginate(page: params[:page], per_page: params[:per_page])
        present :status, "Success"
        present :data, items, with: Entities::Item
      end
    end
  end
end