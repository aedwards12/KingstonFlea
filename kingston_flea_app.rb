require 'sinatra/base'
require 'sinatra/assetpack'

class App < Sinatra::Base
  set :root, File.dirname(__FILE__)

  register Sinatra::AssetPack
  assets do 

	  # serve '/js', :from => 'assets/javascripts'
	  # js :application, [
	  #   '/js/jquery.js',
	  #   '/js/app.js'
	  #   # You can also do this: 'js/*.js'
	  # ]

	  serve '/css', :from => 'assets/stylesheets'
	  css :application, [
	    # '/css/jqueryui.css',
	    '/css/style.css',
	  ]

	  js_compression :jsmin
	  css_compression :sass

	  prebuild true
	end

	get '/' do 
		haml :index
	end
end

