require 'sinatra/base'

class App < Sinatra::Base

	get '/' do
		haml :index
	end

	run! if __FILE__ == $0

end

