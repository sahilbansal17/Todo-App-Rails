# frozen_string_literal: true

class AddColumnsToTodoItems < ActiveRecord::Migration[6.0]
  def change
    add_column :todo_items, :completed_at, :datetime
    add_column :todo_items, :due_at, :datetime
    add_column :todo_items, :priority, :integer
  end
end
