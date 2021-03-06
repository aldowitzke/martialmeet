class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :photo, PhotoUploader

  has_many :teacher_offers,
           class_name: 'Offer',
           foreign_key: :teacher_id,
           dependent: :destroy

  has_many :student_offers,
           class_name: 'Offer',
           foreign_key: :student_id
end
