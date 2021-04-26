class Property < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  # Geocode adr => latitude,longitude

  geocoded_by :address
  after_validation :geocode
  
  # validation pour le formulaire creation d'une propriété

  validates :name, presence: true
  validates :address, presence: true
  validates :photo, presence: true
  validates :status, presence: true
  validates :price, presence: true
  validates :rooms, presence: true
  validates :bathrooms, presence: true
  validates :parking_spaces, presence: true
  validates :for_sale, presence: true
  validates :available_date, presence: true
  validates :details, presence: true
  validates :intro, presence: true 

  # Scope
  
  scope :latest, -> { order created_at: :desc }
  scope :sold, -> { where(for_sale: true, status: "sold") }
  scope :for_sale, -> { where(for_sale: true, status: "available") }
  scope :leased, -> { where(for_sale: false, status: "leased") }
  scope :for_rent, -> { where(for_sale: false, status: "available") }
end
