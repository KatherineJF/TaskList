

class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
end

def show
  @id = params[:id]
  @tasks = Task.find do |task|
    tasks[:id] == id
  end
end
