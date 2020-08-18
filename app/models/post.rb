class Post < ApplicationRecord
<<<<<<< HEAD
	mount_uploader :image, ImageUploader
=======
	belongs_to :user
>>>>>>> dcf1e8a1e5578fb3f934ac1ec5ce0cdba4f27e8e
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
						length: {minimum: 5, maximum: 130}
end
