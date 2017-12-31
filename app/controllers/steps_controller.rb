class StepsController < ApplicationController
  def new
    @tasklist = Tasklist.find(params[:tasklist_id])
    @step = @tasklist.steps.new
  end

  def edit
    @tasklist = Tasklist.find(params[:tasklist_id])
    @step = @tasklist.steps.find(params[:id])
  end

  def create
    @tasklist = Tasklist.find(params[:tasklist_id])
    @step = @tasklist.steps.create(step_params)

    if @step.save
      redirect_to tasklist_path(@tasklist)
    else
      render "new"
    end
  end

  def update
    @tasklist = Tasklist.find(params[:tasklist_id])
     @step = @tasklist.steps.find(params[:id])

      if @step.update(step_params)
        redirect_to tasklists_path
      else
        render 'edit'
      end
  end

  def destroy
    @tasklist = Tasklist.find(params[:tasklist_id])
    @step = @tasklist.steps.find(params[:id])
    @step.destroy

    redirect_to tasklist_path(@tasklist)
  end

  private
  def step_params
    params.require(:step).permit(:title, :step_number, :description, :optional)
  end
end
