require 'sinatra'
require 'sinatra/reloader'

get '/' do
  return "99 Bottles of beer on the wall. <a href='/98'>Take one down.</a>"
end

get '/:num_bottles' do
  num_bottles = params[:num_bottles].to_i
  if num_bottles <= 0
    subtract_bottle = 0
    return "No Bottles of beer on the wall. <a href='/'>Start Over</a>"
  else
    subtract_bottle = (num_bottles).pred
    return "#{num_bottles} Bottles of beer on the wall. <a href='/#{subtract_bottle}'>Take one down.</a>"
  end
end
