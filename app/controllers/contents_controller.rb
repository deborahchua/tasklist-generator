class ContentsController < ApplicationController
  def new

  end

  def show

  end

  def create
    @tasklist = Tasklist.find(params[:tasklist_id])
    @content = @tasklist.step.find(params[:step_id]).content.create(content_params)

    redirect_to tasklist_path(@tasklist)
  end

  def update

  end

  private
  def content_params
    params.require(:content).permit(:type, :text, :url, :context, :style)
  end
end
