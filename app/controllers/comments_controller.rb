class CommentsController < ApplicationController
    def create
        @pro = Product.find(params[:id])
        @comment = @pro.comments.create(comment_params)
        @comment.save
        redirect_to products_path(id:@pro.id)
    end
    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      redirect_to products_path(id:params[:pro_id])
    end
    private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
