class SolutionsController < ApplicationController
  respond_to :html, :js

  # Find solution
  # Check if solution already has a vote by the current_user
  def cast_vote
    @solution = Solution.find(params[:id])
    if !@solution.users_who_have_voted.include?(current_user.id)
      @vote = @solution.votes.new(user_id: current_user.id)
      respond_with(@vote) if @vote.save
    end    
  end

end