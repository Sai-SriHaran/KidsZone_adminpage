ActiveAdmin.register_page "Orders" do 
    content do
        section "Orders" do
            table_for Order.order("created_on desc").limit(50) do
              column :email
              column :order_id
              column :product_id
              column :status
              end
              strong  { link_to "Move to Dashboard",admin_dashboard_path}
          end
    end
  end
  
