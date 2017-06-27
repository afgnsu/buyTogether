class Item < ApplicationRecord
  # carrierwave settings
  mount_uploader :image, ItemImageUploader

  # relationships
  belongs_to :store
end
