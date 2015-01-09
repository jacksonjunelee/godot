require 'json'
require 'redis'
require 'HTTParty'
require 'pry'
require 'sinatra/base'
require 'sinatra/reloader'

require_relative 'server'

run GravatarApp::Server
