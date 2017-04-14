require 'sinatra'
require 'sinatra/reloader'

get '/' do
  return "99 bottles of beer on the wall"
end

get '/num_bottles' do
  params[:num_bottles].to_i
  if num_bottles <= 0
    subtract=bottle == 0
  else
    ????
    # if bottles = 0
