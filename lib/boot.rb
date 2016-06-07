# Require all gems from the Gemfile
require 'rubygems'
require 'bundler'
Bundler.require :default, :development

# ...and then some
# require 'sinatra'
require "sinatra/reloader"
require 'sass/plugin/rack'

# Require my stuff
# dir = "#{File.dirname(__FILE__)}/.."
# require_all "#{dir}/models/**/*.rb"
# require_all "#{dir}/lib/**/*.rb"

# Configure Sinatra
# Sass::Plugin.options[:style] = :compressed
Sass::Plugin.options[:template_location] = 'styles'
Sass::Plugin.options[:css_location] = 'public/css'

use Sass::Plugin::Rack

set :bind, '0.0.0.0'
set :port, 3000