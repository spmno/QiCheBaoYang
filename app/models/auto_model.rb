class AutoModel < ActiveRecord::Base
  mount_uploader :auto_model_photo, AutoModelPhotoUploader
  belongs_to :auto_brand
  has_many :user_records
  has_many :service_item_product_auto_model_ships
  has_many :service_item_products, through: :service_item_product_auto_model_ships
end
