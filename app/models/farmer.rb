class Farmer < ApplicationRecord
  mount_uploader :image_name, ImagesUploader
end
