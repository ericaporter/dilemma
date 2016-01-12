class ProblemsController < ApplicationController
  load_and_authorize_resource
  respond_to :html

  def index
    # @problems = Problem.all
    @category = Category.find_by_name(params[:category]) if params[:category]

    @problems = if @category
      @category.problems
    else
      Problem.all
    end
  end

  def new 
    # load_and_authorize_resource will create the instance variable @problem
    # @problem = Problem.new
    @categories = Category.all
    @problem.solutions.new
    
  end  

  def create
    @problem = current_user.problems.new(problem_params)
    @categories = Category.all
    if @problem.save
      respond_with(@problem) 
    else
      render :new
    end
  end 

  def show
    @problem = Problem.find_by_id(params[:id])
  end

  def destroy
    @problem_element = "#problem_#{@problem.id}"
    @problem.destroy
    render 'delete.js.erb'
  end
  private
  def problem_params
    params.require(:problem).permit(:content, :background_image, :category_id, solutions_attributes: [:title])
  end

end