module VoteHelper

  def user_has_voted_on_problem?(current_user, problem)
    problem.votes.map(&:user_id).include?(current_user.id)
  end

  def problem_belongs_to_current_user?
    current_user == @problem.user
  end 
  
end