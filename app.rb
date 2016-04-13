require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @bottles =
  erb(:index)
end

get '/:num_bottles' do
  @bottles =
  erb()
end

get '/0' do
  @bottles =
  erb(:0)
end
