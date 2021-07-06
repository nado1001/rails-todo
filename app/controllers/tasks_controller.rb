class TasksController < ApplicationController
  def index
    # tasksテーブルの全てのレコードを取得
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    redirect_to task_path
  end

  private
    def task_params
      params.require(:task).permit(:title)
    end
end
