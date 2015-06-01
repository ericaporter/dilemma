class ProblemsController < ApplicationController
  load_and_authorize_resource
  respond_to :html

  def index
    # @problems = Problem.all
    if params[:tag]
      @problems = Problem.tagged_with(params[:tag])
    else
      @problems = Problem.all
    end
  end

  def new 
    # @problem = Problem.new
  end  

  def create
    # assign the tag id (available via params[:category]) to the created problem instance
    # @problem = Problem.tag_id(params[:category])
    @problem.user = current_user
    respond_with(@problem) if @problem.save
    #/problems/:id
  end 

  def show
    @problem = Problem.find_by_id(params[:id])
  end

  private
  def problem_params
    params.require(:problem).permit(:content, :background_image, :tag_list, solutions_attributes: [:title])
  end



end