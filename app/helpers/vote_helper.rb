module VoteHelper

  def user_has_voted_on_problem?(current_user, problem)
    problem.votes.map(&:user_id).include?(current_user.id)
  end
  
end