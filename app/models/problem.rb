class Problem < ActiveRecord::Base
  mount_uploader :background_image, BackgroundImageUploader
  belongs_to :user
  has_many :comments
  has_many :solutions
  has_many :votes, through: :solutions
  accepts_nested_attributes_for :solutions, :allow_destroy => true, :reject_if => proc { |a| a['title'].blank? }
end
