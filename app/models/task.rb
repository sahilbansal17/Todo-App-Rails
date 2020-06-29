# frozen_string_literal: true

# Task Model
class Task < ApplicationRecord
  has_many :todo_items
end
