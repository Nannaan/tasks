class TasksController < ApplicationController
  def index
    @tasks = Task.all.order("deadline DESC")
  end
end
