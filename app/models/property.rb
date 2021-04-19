class Property < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_one_attached :photo

  # geocoded_by :address
  # after_validation :geocode

  scope :latest, -> { order created_at: :desc }

  scope :sold, -> { where(for_sale: true, status: "sold") }
  scope :for_sale, -> { where(for_sale: true, status: "available") }
  scope :leased, -> { where(for_sale: false, status: "leased") }
  scope :for_rent, -> { where(for_sale: false, status: "available") }
end
