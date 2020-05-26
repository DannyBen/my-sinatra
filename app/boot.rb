# Require all gems from the Gemfile
require 'bundler'
Bundler.require :default, :development

# ...and then some
# require 'sinatra'
require "sinatra/reloader"
require 'sass/plugin/rack'

# Reloader config
also_reload "#{__dir__}/**/*.rb"

# Configure Sass
# Sass::Plugin.options[:style] = :compressed
Sass::Plugin.options[:template_location] = 'styles'
Sass::Plugin.options[:css_location] = 'public/css'
use Sass::Plugin::Rack

# Configure CoffeeScript
use Rack::Coffee, urls: '/scripts' #, root: 'public', urls: '/js'

# Configure Slim
Slim::Engine.set_options pretty: true

# Configure Sinatra
set :bind, '0.0.0.0'
set :port, 3000
set :root, File.expand_path('..', __dir__)
