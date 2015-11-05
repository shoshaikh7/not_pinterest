class Pin < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, styles: {medium: "300x300>"}
  # Makes sure it is an actual image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
