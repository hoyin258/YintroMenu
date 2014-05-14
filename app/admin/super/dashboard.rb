ActiveAdmin.register_page "Dashboard", namespace: :super_admin do

  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do

      Store.all.map do |store|
        span class: "blank_slate" do
          span store.name
          if store.admin_user.nil?
            small "No Admin"
          else
            small store.admin_user.email
          end
        end
      end
    end
  end
end

