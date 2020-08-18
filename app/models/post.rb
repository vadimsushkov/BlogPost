class Post < ApplicationRecord
	mount_uploader :image, ImageUploader
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
						length: {minimum: 5, maximum: 130}
end
