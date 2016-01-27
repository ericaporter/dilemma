class CommentsController < ApplicationController

  load_and_authorize_resource :comment

  respond_to :html, :json, :js

  def create
    @commentable = find_commentable
    @comment = @commentable.comments.build(params[:comment])
    @comment.user = current_user

    @comment.save

  end

  def destroy
    respond_with(@comment) if @comment.destroy
  end  


  private
  
  def comment_params
    params.require(:comment).permit!
  end

  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end
end