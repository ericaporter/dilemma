class Solution < ActiveRecord::Base
  belongs_to :problem
  
  has_many :votes, dependent: :destroy

  def users_who_have_voted
    problem.votes.map(&:user_id)
  end
end
