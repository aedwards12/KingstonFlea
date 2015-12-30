require 'rubygems'
require 'bundler'

Bundler.require

require './kingston_flea_app'
set :environment, :production
set :server, 'thin'

run App