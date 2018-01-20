# b.rb
require 'sinatra'

set :count, 0
set :port, 4567
set :bind, '0.0.0.0'

#filter to intercept request to URL
before '/health' do
  log_request
end

# Helper function to write
def log_request
  settings.count += 1
end

get '/health' do
	"B:" + settings.count.to_s + " "
end
