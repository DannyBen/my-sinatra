ENV['SINATRA_ACTIVESUPPORT_WARNING'] = 'false'
require './app/app'
run Sinatra::Application
