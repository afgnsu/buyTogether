class Store < ApplicationRecord
  # carreirwave settings
  mount_uploader :logo, LogoUploader
  mount_uploader :image, StoreImageUploader

  # relationships
  has_many :items

  validates_presence_of :name, :phone, :address, :description
end
