# TODO require Redis
require 'sinatra/base'
require 'sinatra/reloader'
require 'redis'
require_relative 'server'

run App::Server
