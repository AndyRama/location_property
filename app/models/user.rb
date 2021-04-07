class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :properties

  mount_uploader :photos , PhotoUploader
  serialize :photos, JSON # If you use SQLite, add this line.

  def full_name
    "#{first_name} #{last_name}" 
  end  
end
