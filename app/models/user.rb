class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :properties
  has_one_attached :image
  has_one_attached :cover_image
  
   # validation pour le formulaire d'inscription utilisateur

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :image, presence: true
  validates :company, presence: true
  validates :number, presence: true
  validates :details, presence: true
  validates :cover_image, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
