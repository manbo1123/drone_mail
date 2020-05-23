class Img < ApplicationRecord
  #mount_uploader :src, ImageUploader
  belongs_to :drone, optional: true

  validates :src, presence: true
end
