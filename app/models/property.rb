class Property < ApplicationRecord
  mount_uploader :photo, PhotoUploader 
  belongs_to :user

  scope :latest, -> { order created_at: :desc }
  # Ex:- scope :active, -> {where(:active => true)}
end
