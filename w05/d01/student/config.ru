require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'sinatra'

run SinatraApp::Server
