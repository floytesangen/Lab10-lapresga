require 'sinatra/base'
require 'haml'
require 'thin'

class Fortune < Sinatra::Base
get '/fortune/random/?' do
@fortune = $fortunes[rand($fortunes.size)]
haml :fortune
end
get '/fortune/get/ID' do
@fortune = $fortunes[params[:fid]]
haml :fortune
end
end

require 'fortunedata'
