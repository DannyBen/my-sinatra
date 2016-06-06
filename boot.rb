require 'sinatra'
require "sinatra/reloader"
require 'sass/plugin/rack'

Sass::Plugin.options[:style] = :compressed
Sass::Plugin.options[:template_location] = 'styles'
Sass::Plugin.options[:css_location] = 'public/css'

use Sass::Plugin::Rack

set :bind, '0.0.0.0'
set :port, 3000