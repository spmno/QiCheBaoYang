class UserRecord < ActiveRecord::Base
  def auto_brand_id
    @auto_brands = AutoBrand.all
  end
end
