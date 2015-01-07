require 'redis'
require 'pry'
require 'sinatra/base'
require 'sinatra/reloader'

require_relative 'server'
<<<<<<< HEAD
require_relative 'database_helper'
=======
>>>>>>> 6d420a648bebc46c6e0fd717cfd3960b8731667e

run CatTinder::Server
