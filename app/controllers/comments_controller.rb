class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment, only: [:destroy]

  # POST /comments
  # POST /comments.json
  def create
    @parent = Article.find(params[:article_id]) if params[:article_id]   
    @parent = Comment.find(params[:comment_id]) if params[:comment_id]  
    @comment = @parent.comments.new(comment_params) 
    @comment.user = current_user   
    @comment.save
    respond_to do |format|
      format.html { redirect_to :back }
      format.js 
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    redirect_to :back
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      begin
        @comment = Comment.find(params[:id])
      rescue ActiveRecord::RecordNotFound => e
        return redirect_to root_path, :notice => "Could not find comment"
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:body)
    end
end
