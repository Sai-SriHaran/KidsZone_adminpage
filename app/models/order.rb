class Order < ApplicationRecord
    self.table_name = "orders"
    validates :email, presence: true
    validates :order_id, presence: true
    validates :product_id, presence: true
    validates :status, presence: true
end
