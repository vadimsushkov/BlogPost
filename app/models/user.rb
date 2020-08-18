class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
<<<<<<< HEAD
  mount_uploader :avatar, AvatarUploader
=======

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
>>>>>>> dcf1e8a1e5578fb3f934ac1ec5ce0cdba4f27e8e
end
