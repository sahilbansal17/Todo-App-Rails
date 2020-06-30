# frozen_string_literal: true

class UpdateForeignKey2 < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :todo_items, :todo_lists
    # add_foreign_key :todo_items, :todo_lists
  end
end
