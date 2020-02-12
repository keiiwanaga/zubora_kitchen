class Meal < ApplicationRecord
  validates :name, :materials, :step1, presence: true
  has_one_attached :image
  has_one_attached :step1_image
  has_one_attached :step2_image
  has_one_attached :step3_image
  has_one_attached :step4_image
  has_one_attached :step5_image
  belongs_to :user
end
