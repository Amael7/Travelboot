class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :photo, PhotoUploader

  has_many :reservations

  validates :name, presence: true
  validates :last_name, presence: true
  validates :adress, presence: true
  validates :phone, presence: true
  validates :age, presence: true

end
