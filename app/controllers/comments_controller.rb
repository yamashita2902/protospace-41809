class CommentsController < ApplicationController
  
  before_action :set_prototype
  def create
    @comment = @prototype.comments.build(comment_params)
    if @comment.save
      redirect_to prototype_path(@prototype) # このようにPrefixでパスを指定することが望ましいです。
    else
      render 'prototypes/show', status: :unprocessable_entity
    end
  end

  private

  def set_prototype
    @prototype = Prototype.find(params[:prototype_id]) # プロトタイプをセット
  end


  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: @prototype.id)
  end
end
