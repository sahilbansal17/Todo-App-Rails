# frozen_string_literal: true

class AddForeignKey < ActiveRecord::Migration[6.0]
  def change
    # add_foreign_key :todo_items, :todo_lists
    # finally dropping table
    drop_table :todo_items
    drop_table :todo_lists
  end
end
