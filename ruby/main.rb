require 'sinatra'

$stdout.sync = true

set :port, 8080
set :bind, "0.0.0.0"

before do
  halt 401, 'Denied' unless request.env['HTTP_SUPERSECRETACCESSKEY'] == ENV['SUPERSECRETACCESSKEY']
end

get '/' do
  'It works!'
end
