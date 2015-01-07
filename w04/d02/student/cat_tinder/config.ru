require 'redis'
require 'pry'
require 'sinatra/base'
require 'sinatra/reloader'

require_relative 'server'
require_relative 'database_helper'

run CatTinder::Server
