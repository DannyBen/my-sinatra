require 'sinatra'
require './boot'

get '/' do
  slim :index, locals: { message: 'Fairly Local' }
end


