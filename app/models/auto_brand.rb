class AutoBrand < ActiveRecord::Base
  mount_uploader :auto_brand_photo, AutoBrandPhotoUploader
  has_many :auto_models
end
