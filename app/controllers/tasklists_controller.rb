class TasklistsController < ApplicationController
  def index
    @tasklists = Tasklist.all
  end

  def show
    @tasklist = Tasklist.find(params[:id])
    @steps = @tasklist.steps.all
    @contents = @tasklist.contents.all.order(:position)
  end

  def json
    @tasklist = Tasklist.find(params[:id])
    @steps = @tasklist.steps.all
    @contents = @tasklist.contents.all
  end

  def new
    @tasklist = Tasklist.new
  end

  def edit
    @tasklist = Tasklist.find(params[:id])
  end

  def sort
    params[:order].each_with_index do |id, index|
      Content.find(value[:id]).update_attribute(:position,value[:position])
    end
    render :nothing => true
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
      redirect_to tasklist_path(@tasklist)
    else
      render 'edit'
    end
  end

  def destroy
    @tasklist = Tasklist.find(params[:id])
    @tasklist.destroy

    redirect_to tasklists_path
  end

  private
  def tasklist_params
    params.require(:tasklist).permit(:title, :description, :base_path, :meta_description)
  end
end
