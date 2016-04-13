require 'sinatra'
require 'sinatra/reloader'

get '/' do
  return "99 Bottles of beer on the wall"
end

get '/0' do
  return "No Bottles of beer on the wall"
end

get '/:num_bottles' do
  # testing
return params[:num_bottles]
end
