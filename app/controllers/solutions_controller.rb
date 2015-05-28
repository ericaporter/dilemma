class SolutionsController < ApplicationController
  respond_to :html, :js

  def cast_vote
    @solution = Solution.find(params[:id])
    @vote = @solution.votes.new
    respond_with(@vote) if @vote.save
  end

end