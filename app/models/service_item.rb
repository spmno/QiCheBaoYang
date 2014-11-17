class ServiceItem < ActiveRecord::Base
  belongs_to :auto_model
  has_one :customer_service_item_ship
  def auto_brand_id
    @auto_brands = AutoBrand.all
  end
end
