# frozen_string_literal: true

# Todo Item controller
class TodoItemsController < ApplicationController
  before_action :set_task

  def create
    @todo_item = @task.todo_items.create(todo_item_params)
    redirect_to @task
  end

  def destroy
    @todo_item = @task.todo_items.find(params[:id])
    if @todo_item.destroy
      flash[:success] = 'Todo Item was successfully deleted.'
    else
      flash[:error] = 'Todo Item could not be deleted!'
    end
    redirect_to @task
  end

  private

  def set_task
    @task = Task.find(params[:task_id])
  end

  def todo_item_params
    params[:todo_item].permit(:content)
  end
end
