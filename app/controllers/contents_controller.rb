class ContentsController < ApplicationController
  before_action :tasklist_details

  def new
    @content = @step.contents.new
  end

  def edit
    @content = @tasklist.contents.find(params[:id])
  end

  def index
    @contents = @tasklist.contents.order(:position)
  end

  def sort
    params[:content].each_with_index do |id, index|
        Content.where(id: id).update_all(position: index + 1)
    end
  end

  def create
    @content = @step.contents.new(content_params)

    if @content.save
      redirect_to tasklist_path(@tasklist)
    else
      render 'new'
    end
  end

  def update
    @content = @tasklist.contents.find(params[:id])

      if @content.update(content_params)
        redirect_to tasklist_path(@tasklist)
      else
        render 'edit'
      end
  end
  def destroy
    @content = @tasklist.contents.find(params[:id])
    @content.destroy

    redirect_to tasklist_path(@tasklist)
  end

  private
  def content_params
    params.require(:content).permit(:type, :text, :url, :context, :style, :content_type)
  end

  def tasklist_details
    @tasklist = Tasklist.find(params[:tasklist_id])
    @step = Step.find(params[:step_id])
  end
end
