class UserRecord < ActiveRecord::Base
  belongs_to :user
  belongs_to :auto_model
  def auto_brand_id
    @auto_brands = AutoBrand.all
  end
end
