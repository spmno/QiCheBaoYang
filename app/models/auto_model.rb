class AutoModel < ActiveRecord::Base
  mount_uploader :auto_model_photo, AutoModelPhotoUploader
  belongs_to :auto_brand
end
