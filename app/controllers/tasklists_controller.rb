class TasklistsController < ApplicationController
  def index
    @tasklists = Tasklist.all
  end

  def show
    @tasklist = Tasklist.find(params[:id])
  end

  def new
  end

  def edit
    @tasklist = Tasklist.find(params[:id])
  end

  def create
    # render plain: params[:tasklist].inspect
    @tasklist = Tasklist.new(tasklist_params)

    if @tasklist.save
      redirect_to @tasklist
    else
      render "new"
    end
  end

  def update
    @tasklist = Tasklist.find(params[:id])

    if @tasklist.update(tasklist_params)
      redirect_to @tasklist
    else
      render 'edit'
    end
  end

  private
  def tasklist_params
    params.require(:tasklist).permit(:title, :description, :base_path, :meta_description)
  end
end
