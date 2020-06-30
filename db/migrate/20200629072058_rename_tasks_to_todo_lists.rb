# frozen_string_literal: true

class RenameTasksToTodoLists < ActiveRecord::Migration[6.0]
  def self.up
    rename_table :tasks, :todo_lists
  end

  def self.down
    rename_table :todo_lists, :tasks
  end
end
