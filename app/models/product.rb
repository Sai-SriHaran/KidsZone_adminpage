class Product < ApplicationRecord
    validates :age,:cloth_type,:color,:gender,:img_url,:price,:product_name,:product_size ,:category,:brand, presence:true
end
