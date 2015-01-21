require 'uri'
require 'httparty'
require 'json'

require 'sinatra/base'
require 'sinatra/reloader'

require_relative 'server'

run GithubOauth::Server
