class Todo < ActiveRecord::Base

  def self.more_todo?
    where(complete: false).any?
  end

  def self.any_complete?
    where(complete: true).any?
  end

  def self.toggle_all
    toggle_to = more_todo?
    update_all(complete: toggle_to)
    toggle_to
  end

  def self.destroy_completed
    Todo.where(complete: true).destroy_all
  end
end
