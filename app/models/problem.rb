class Problem < ActiveRecord::Base
  acts_as_commentable
  mount_uploader :background_image, BackgroundImageUploader
  belongs_to :user
  belongs_to :category
  has_many :comments
  has_many :solutions
  has_many :votes, through: :solutions
  accepts_nested_attributes_for :solutions, :allow_destroy => true, :reject_if => proc { |a| a['title'].blank? }
  validates_presence_of :category_id, message: "You must select a category."
  validate :have_solutions
  def have_solutions
    if solutions.size < 2
      errors.add(:base, "Must have at least 2 options.")
    end
  end
end
