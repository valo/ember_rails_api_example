class TasksController < ApplicationController
  respond_to :json

  def index
    respond_with Project.find(params[:project_id]).tasks
  end

  def show
    respond_with Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])

    task.update(update_task_params)

    respond_with task
  end

  def create
    task = Task.create(create_task_params)

    task.save

    respond_with task
  end

  def destroy
    task = Task.find(params[:id])

    respond_with task.destroy
  end

  private

  def create_task_params
    params.require(:task).permit(:name, :completed, :project_id)
  end

  def update_task_params
    params.require(:task).permit(:name, :completed)
  end
end
