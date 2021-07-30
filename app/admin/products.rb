ActiveAdmin.register Product do
  
  permit_params :age,:cloth_type,:color,:gender,:img_url,:price,:product_name,:product_size,:category,:brand
end
