require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @bottles = 99
    erb(:index)
end

get '/bottles/:number' do
  @bottles = params[:number].to_i
  erb(:index)
end
