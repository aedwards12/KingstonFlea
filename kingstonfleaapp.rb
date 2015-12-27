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
    # '/css/foundation.css',
    # '/css/app.css'
  ]

  js_compression :jsmin
  css_compression :sass

end

get '/' do 
	haml :index, format: :html5
end
