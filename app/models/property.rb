class Property < ApplicationRecord
  mount_uploader :photo, PhotoUploader 
  # has_and_belongs_to_many :photos, join_table: "users", foreign_key: "user_id"
  belongs_to :user

  scope :latest, -> { order created_at: :desc }
  # Ex:- scope :active, -> {where(:active => true)}
end
