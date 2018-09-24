
require 'time'

  class TasksController < ApplicationController

    def index
      @tasks = Task.all
    end

    def show
      id = params[:id]
      @task = Task.find_by(id:id)

    end

    def new
      @task = Task.new
    end

    def create
      @task = Task.new(name: params[:task][:name], description: params[:task][:description])
      if @task.save
        redirect_to root_path
      else
        render :new
      end
    end

    def edit
      @task = Task.find(params[:id].to_i)
    end

    def update
      @task = Task.find(params[:id].to_i)
      @task.update(name: params[:task][:name], description: params[:task][:description],
        completion_date: params[:task][:completion_date] )
      task_path(@task)
      redirect_to root_path
    end

    def destroy
      task = Task.find_by(id: params[:id].to_i)
      @deleted_task = task.destroy
      redirect_to root_path
    end

    def completed
      @tasks = Task.where(complete: false)
    end

    def complete
      @task = Task.find(params[:id].to_i)
      @task.update_attribute(:complete, true)
      @task.update_attribute(:completion_date, Time.now)
      redirect_to root_path
    end

end
