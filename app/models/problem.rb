class Problem < ActiveRecord::Base
  acts_as_commentable
  mount_uploader :background_image, BackgroundImageUploader
  belongs_to :user
  belongs_to :category
  
  has_many :comments, as: :commentish
  
  has_many :votes, through: :solutions
  has_many :solutions, dependent: :destroy
  accepts_nested_attributes_for :solutions, :allow_destroy => true, :reject_if => proc { |solution| solution['title'].blank? }

  validate :category_is_present
  validate :have_solutions
  validates :content, length: { in: 10..200 }
  def category_is_present
    unless category_id.present?
      errors.add(:base, "You must select a category")
    end
  end
  def have_solutions
    unless solutions.size.in?(2..4)
      errors.add(:base, "Must have at least 2 options but can not have more than 4.")
    end
  end
end
