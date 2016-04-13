require 'sinatra'
require 'sinatra/reloader'

# get '/:num_bottles' do
#   "99 Bottles of beer on the wall. <a href=/'98'>Take one down</a>"
# end
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
