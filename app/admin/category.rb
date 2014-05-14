# ActiveAdmin.register Category do
#
#   menu label: "分類"
#
#
#   permit_params :name, :description , :store_id
#
#   # before_create do |category|
#   #   category.store_id = current_admin_user.store_id
#   # end
#
#   # controller do
#   #
#   #   #   permit_params :name, :description
#   #   # def permitted_params
#   #   #   params.permit category: [ :name, :description]
#   #   # end
#   #
#   #   # def create
#   #     # params[:category].merge!({ store_id: current_admin_user.store })
#   #     # create!
#   #   # end
#   #
#   #
#   #   def create
#   #     category = Category.new(permitted_params.require :category)
#   #     # category = Category.new(permitted_params)
#   #     category.store_id = current_admin_user.store
#   #     if category.save
#   #       redirect_to :action => :index
#   #     end
#   #   end
#   #   #
#   #   # def update
#   #   #   category = Category.update(permitted_params)
#   #   #   if category.save
#   #   #     redirect_to :action => :index
#   #   #   end
#   #   # end
#   #
#   # end
#
#   index do
#     selectable_column
#     id_column
#     column :name
#     column :description
#     column :created_at
#     column :updated_at
#     actions
#   end
#
#   filter :name
#   filter :description
#   filter :created_at
#   filter :updated_at
#
#   form do |f|
#     f.inputs "Store Detail" do
#       f.input :name
#       f.input :description, value: "1"
#     end
#     f.actions
#   end
#
# end
