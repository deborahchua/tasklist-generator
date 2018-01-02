class ContentsController < ApplicationController
  def new
    @tasklist = Tasklist.find(params[:tasklist_id])
    @step = Step.find(params[:step_id])
  end

  def edit
    @tasklist = Tasklist.find(params[:tasklist_id])
    @step = Step.find(params[:step_id])
    @content = @tasklist.contents.find(params[:id])
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
    @tasklist = Tasklist.find(params[:tasklist_id])
    @content = @tasklist.contents.find(params[:id])

      if @content.update(content_params)
        redirect_to tasklist_path(@tasklist)
      else
        render 'edit'
      end
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
