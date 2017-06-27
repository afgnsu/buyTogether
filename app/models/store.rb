class Store < ApplicationRecord
  # carreirwave settings
  mount_uploader :logo, LogoUploader
  mount_uploader :image, StoreImageUploader

  validates_presence_of :name, :phone, :address, :description
end
