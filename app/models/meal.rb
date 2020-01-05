class Meal < ApplicationRecord
  validates :name, :materials, :step1, presence: true
  mount_uploader :image, ImagesUploader
  mount_uploader :step1_image, ImagesUploader
  mount_uploader :step2_image, ImagesUploader
  mount_uploader :step3_image, ImagesUploader
  mount_uploader :step4_image, ImagesUploader
  mount_uploader :step5_image, ImagesUploader
  belongs_to :user
end
