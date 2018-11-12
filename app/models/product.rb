class Product < ApplicationRecord
  mount_uploader :image_name, ImagesUploader
end
