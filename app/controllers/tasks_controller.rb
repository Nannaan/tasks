class TasksController < ApplicationController
  def index
    @tasks = Task.all.order("deadline ASC")
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params)
    redirect_to root_path
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to root_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update(task_params)
    redirect_to root_path
  end

  def destroy_all
    Task.destroy_all
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:task_name, :deadline, :required_time)
  end

end
