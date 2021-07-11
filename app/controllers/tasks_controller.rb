class TasksController < ApplicationController
  def index
    # tasksテーブルの全てのレコードを取得
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    if !task_params.empty?
      return false
    else
      @task = Task.create(task_params)
      redirect_to tasks_url
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_url
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_url
  end

  private
    def task_params
      params.require(:task).permit(:title)
    end
end
