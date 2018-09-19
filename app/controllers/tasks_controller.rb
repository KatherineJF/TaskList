

class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
end

def show
  id = params[:id]
  @task = Task.find(id)
end
