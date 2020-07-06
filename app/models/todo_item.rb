# frozen_string_literal: true

# Todo Item Model
class TodoItem < ApplicationRecord
  belongs_to :todo_list

  def completed?
    !completed_at.blank?
  end
end
