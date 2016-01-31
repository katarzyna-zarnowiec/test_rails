class Secret < ActiveRecord::Base
	VALID_IMAGE_NAME_REGEX = /\A[\w]+\.(?:gif|jpg|jpeg|tiff|png)+\z/i
	validates :image, presence: true, length: { maximum: 50 }, format: { with: VALID_IMAGE_NAME_REGEX}
	validates :text, presence: true, length: { maximum: 1000 }

end
