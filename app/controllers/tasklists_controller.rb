class TasklistsController < ApplicationController
  def index
    @tasklists = Tasklist.all
  end

  def show
    @tasklist = Tasklist.find(params[:id])
  end

  def new
  end

  def create
    # render plain: params[:tasklist].inspect
    @tasklist = Tasklist.new(params.require(:tasklist).permit(:title, :description, :base_path, :meta_description))

    @tasklist.save
    redirect_to @tasklist
  end
end
