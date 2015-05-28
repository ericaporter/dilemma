class ProblemsController < ApplicationController
  load_and_authorize_resource
  respond_to :html

  def index
    # @problems = Problem.all
  end

  def new 
    # @problem = Problem.new
  end  

  def create
    @problem.user = current_user
    respond_with(@problem) if @problem.save
    #/problems/:id
  end 

  def show
    #@problem = Problem.find_by_id(params[:id])
  end

  private
  def problem_params
    params.require(:problem).permit(:content, :background_image, solutions_attributes: [:title])
  end



end