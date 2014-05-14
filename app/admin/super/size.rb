ActiveAdmin.register Size, namespace: :super_admin do

  menu label: "食物尺寸"

  permit_params :name,  :description

end
