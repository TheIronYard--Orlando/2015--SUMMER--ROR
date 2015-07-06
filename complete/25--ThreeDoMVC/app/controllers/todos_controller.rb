class TodosController < ApplicationController

  def index 
    @todo = Todo.new
    @todos = Todo.all
    set_up_bottom_row
  end

  def create
    @todo = Todo.create(todo_params(:name))
    @count = Todo.count
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update(todo_params(:complete, :name))
    set_up_bottom_row
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    set_up_bottom_row
  end

  def toggle_all
    @toggle_to = Todo.toggle_all
    set_up_bottom_row
  end

  def clear_completed
    @todos = Todo.destroy_completed
  end

  private

    def todo_params(*attributes)
      params.require(:todo).permit(*attributes)
    end

    def set_up_bottom_row
      @count = Todo.where(complete: false).count
      @any_complete = Todo.any_complete?
      @more_todo = Todo.more_todo?
    end
end
