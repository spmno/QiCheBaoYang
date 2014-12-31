class ServiceItemProductAutoModelShip < ActiveRecord::Base
  belongs_to :service_item_product
  belongs_to :auto_model
end
