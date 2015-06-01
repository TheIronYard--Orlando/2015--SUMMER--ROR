require 'active_record'
class Todo < ActiveRecord::Base
  establish_connection adapter: 'sqlite3',
                                          database: 'todomvc.db'

  attr_accessor :being_edited #lets me set it and read it
  # same as making an instance var @being_edited
  # def being_edited
  #   @being_edited
  # end
  # 
  # def being_edited=(some_value)
  #    @being_edited = some_value
  # end

  def self.toggle_all
    # to start, just set them all to be true
    # that is, update them all to be complete: true
    # time to look up another method...
    # Todo.update_all complete: true
    # now let's have a more sophisticated version
    if Todo.where(complete: false).any?
      self.update_all complete: true
    else
      self.update_all complete: false
    end
  end 

  def self.clear_completed #class method
    self.where(complete: true).destroy_all
  end
end
# you'll need a little more than this
