class Pin < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  acts_as_votable
    # upvote_by ..... => Add upvote by current_user
    # get_dislikes.size => Count all downvotes
    # get_likes.size => Count all upvotes

  acts_as_taggable_on :tags

  has_attached_file :image, styles: {medium: "300x300>"}

  # Makes sure it is an actual image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
