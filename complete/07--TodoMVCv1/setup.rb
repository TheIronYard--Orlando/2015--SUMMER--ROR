require 'active_record'
ActiveRecord::Base.establish_connection adapter: 'sqlite3',
                                        database: 'todomvc.db'

ActiveRecord::Base.connection.create_table 'todos', force: true do |table|
  table.string :name
  table.boolean :complete, default: false
end
