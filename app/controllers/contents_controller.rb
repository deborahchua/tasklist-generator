class ContentsController < ApplicationController
  def new

  end

  def show

  end

  def create
    @tasklist = Tasklist.find(params[:tasklist_id])
    @step = Step.find(params[:step_id])
    @content = Step.find(params[:step_id]).contents.new(content_params)

    if @content.save
      redirect_to tasklist_path(@tasklist)
    else
      render 'new'
    end
  end

  def update

  end

  private
  def content_params
    params.require(:content).permit(:type, :text, :url, :context, :style)
  end
end
