class CommentsController < ApplicationController
  load_and_authorize_resource
  
  before_filter :set_commentable
  before_filter :set_comment, only: [:destroy]

  def create
    @comment = @commentable.comments.build(comment_params)
    @comment.user = current_user
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @commentable }
      else
        format.html { render :action => 'new' }
      end
    end
  end

  def destroy
    @comment.destroy
    redirect_to @commentable
  end

  private 
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def set_commentable
      @commentable = params[:commentable_type].camelize.constantize.find(params[:commentable_id])
    end

    def comment_params
      params.require(:comment).permit(:content)
    end

end
