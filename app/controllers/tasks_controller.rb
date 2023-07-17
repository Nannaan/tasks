class TasksController < ApplicationController
  def index
    @tasks = Task.all.order("deadline ASC")
  end
end
