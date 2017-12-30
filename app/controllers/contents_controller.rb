class ContentsController < ApplicationController
  def new
    @tasklist = Tasklist.find(params[:tasklist_id])
    @step = Step.find(params[:step_id])
<<<<<<< HEAD
  end

  def edit
    @tasklist = Tasklist.find(params[:tasklist_id])
    @step = Step.find(params[:step_id])
    @content = @tasklist.contents.find(params[:id])
=======
>>>>>>> f320856188cab9720e3c31ee16d108a25d3a0701
  end

  def show

  end

  def create
    @tasklist = Tasklist.find(params[:tasklist_id])
    @step = Step.find(params[:step_id])
    @content = @step.contents.new(content_params)

    if @content.save
      redirect_to tasklist_path(@tasklist)
    else
      render 'new'
    end
  end

  def update

  end
  def destroy
    @tasklist = Tasklist.find(params[:tasklist_id])
    @step = Step.find(params[:step_id])
    @content = @tasklist.contents.find(params[:id])
    @content.destroy

    redirect_to tasklist_path(@tasklist)
  end

  private
  def content_params
    params.require(:content).permit(:type, :text, :url, :context, :style, :content_type)
  end
end
