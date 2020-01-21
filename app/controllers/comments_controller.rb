class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  def show
  end

  # GET /comments/new
  def new
    @answer_comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  def create
    @answer_comment = Comment.new(answer_comment_params)

    if @answer_comment.save
      redirect_to @answer_comment, notice: 'Answer comment was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /comments/1
  def update
    if @answer_comment.update(answer_comment_params)
      redirect_to @answer_comment, notice: 'Answer comment was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /comments/1
  def destroy
    @answer_comment.destroy
    redirect_to comments_url, notice: 'Answer comment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_comment
      @answer_comment = Comment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def answer_comment_params
      params.require(:answer_comment).permit(:answer_id, :body_text, :user_id)
    end
end
