class Post < ApplicationRecord
	belongs_to :user
	has_attached_file :image, styles: { medium: "1000x800#", small: "110x70#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
