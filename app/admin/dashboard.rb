ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    section "Orders" do
      table_for Order.order("created_on desc").limit(10) do
        column :email
        column :product_id
        column :order_id
        column :status
        end
        strong  { link_to "View All Orders",admin_orders_path}
    end


    section "Products" do
      table_for Product.order("created_at desc").limit(10) do
        column :product_name
        column :product_size
        column :age
        column :color
        column :price
        end
        strong  { link_to "View All Products",admin_products_path}
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Products" do
    #       ul do
    #         Product.recent(5).map do |post|
    #           li link_to(product.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
