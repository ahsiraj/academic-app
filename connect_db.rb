require 'active_record'

def connect_db!
  ActiveRecord::Base.establish_connection(
    host: 'localhost',
    adapter: 'postgresql',
    database: 'lite_db',
    user: 'postgres',
    password: 'kk123'
  )
end
