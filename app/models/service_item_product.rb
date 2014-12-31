class ServiceItemProduct < ActiveRecord::Base
  has_many :service_item_product_auto_model_ships
  has_many :auto_models, through: :service_item_product_auto_model_ships
end
