class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    task_id = params[:id].to_i
    @task = Task.find(task_id)

    unless @task
      head :not_found
    end
  end

  def new
    @task = Task.new
  end
end
