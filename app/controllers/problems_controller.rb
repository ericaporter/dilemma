class ProblemsController < ApplicationController
  load_and_authorize_resource
  respond_to :html

  def index
    # @problems = Problem.all
    @category = ActsAsTaggableOn::Tag.find(params[:category]) if params[:category]

    @problems = if @category
      Problem.tagged_with @category
    else
      Problem.all
    end
  end

  def new 
    # load_and_authorize_resource will create the instance variable @problem
    # @problem = Problem.new
  end  

  def create
    @problem = current_user.problems.new(problem_params)
    @problem.tag_list << ActsAsTaggableOn::Tag.find(params[:category])
    if @problem.save
      respond_with(@problem) 
    else
      render :new
    end
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