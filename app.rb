require 'sinatra'
require 'sinatra/reloader'

get '/' do
  bottle_image = "<img src='http://www.spinnakers.com/media/beer-blank.png' alt='beeeeerrr height='100' width='46'/>" * 99
  return "99 Bottles of beer on the wall. <a href='/98'>Take one down.</a><p>#{bottle_image}</p>"
end

get '/:num_bottles' do
  num_bottles = params[:num_bottles].to_i
  if num_bottles <= 0
    subtract_bottle = 0
    return "No Bottles of beer on the wall :-(. <a href='/'>Start Over</a>"
  else
    subtract_bottle = (num_bottles).pred
    bottle_image = "<img src='http://www.spinnakers.com/media/beer-blank.png' alt='beeeeerrr' height='100' width='46'/>" * num_bottles
    return "#{num_bottles} Bottles of beer on the wall. <a href='/#{subtract_bottle}'>Take one down.</a><p>#{bottle_image}</p>"
  end
end
