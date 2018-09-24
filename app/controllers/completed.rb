  class TasksComplete < ApplicationController

    def completed
      @tasks = Task.where(complete: false)
    end

    def complete
      @task = Task.find(params[:id])
      @task.update_attribute(:complete, true)
      @task.put(completion_date: params[:task][:completion_date = Time.now])
      flash[:notice] = 'marked task as complete'

      redirect_to completed_tasks_path
    end


  end

@task.update(name: params[:task][:name], description: params[:task][:description])
