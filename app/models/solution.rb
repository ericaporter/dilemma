class Solution < ActiveRecord::Base
  belongs_to :problem
  has_many :votes

end
