
require 'rack'

app = Proc.new do |env|
    ['200', {'Content-Type' => 'text/html'}, ['<h1>Live from SOMEWHERE!</h1>']]
end

Rack::Handler::WEBrick.run app

# config.ru

run Proc.new { |env| ['200', {'Content-Type' => 'text/html'}, ['get rack\'d']] }
