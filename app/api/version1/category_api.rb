module Version1
  class CategoryAPI < Grape::API
    helpers APIHelper

    resource :categories do

      desc 'Returns food list by category id'
      params do
        use :pagination
      end
      get ":id" do
        foods = Food
        .by_category_id(params[:id])
        .paginate(page: params[:page], per_page: params[:per_page])
        .order(:id)
        present :status, "Success"
        present :data, foods, with: Entities::Food
      end
    end
  end
end