class TasksController < ApplicationController
  def index
    # tasksテーブルの全てのレコードを取得
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end
end
