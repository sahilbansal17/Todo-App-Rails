# frozen_string_literal: true

class TodoList < ApplicationRecord
  # destroy the related todo items when deleting the todo list
  has_many :todo_items, dependent: :destroy
end
