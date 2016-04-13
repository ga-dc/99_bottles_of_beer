require 'sinatra'
require 'sinatra/reloader'

get '/:num_bottles' do
  "99 Bottles of beer on the wall. <a href=/'98'>Take one down</a>"
end
