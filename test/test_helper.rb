$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "scenic/mysql_adapter"

require "minitest/autorun"

# establish the database connection
ActiveRecord::Base.establish_connection(
  ENV['DATABASE_URL'] || 'mysql2://root@localhost/scenic_mysql_adapter_test'
)
ActiveRecord::Migration.verbose = false
