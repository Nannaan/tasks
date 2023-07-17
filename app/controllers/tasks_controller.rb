class TasksController < ApplicationController
  def index
    @tasks = Task.all.order("deadline ASC")
  end

  def new
    @tasks = Task.new
  end

  def create
    Task.create(task_params)
    redirect_to root_path
  end

  private
  def task_params
    params.permit(:task_name, :deadline, :required_time, :time_unit)
  end

end
