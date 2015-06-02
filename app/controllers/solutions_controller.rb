class SolutionsController < ApplicationController
  include VoteHelper
  respond_to :html, :js

  # Find solution
  # Check if solution already has a vote by the current_user
  def cast_vote
    @solution = Solution.find(params[:id])
    problem = @solution.problem
    unless user_has_voted_on_problem?(current_user, problem)
      save_and_respond_with_vote
    end    
  end
  def save_and_respond_with_vote
    @vote = @solution.votes.new(user_id: current_user.id)
    respond_with(@vote) if @vote.save
  end

end