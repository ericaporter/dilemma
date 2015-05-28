class Problem < ActiveRecord::Base
  mount_uploader :background_image, BackgroundImageUploader
  belongs_to :user
  has_many :comments
  has_many :solutions
  
end
