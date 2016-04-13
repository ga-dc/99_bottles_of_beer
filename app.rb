require 'sinatra'
require 'sinatra/reloader'

# get '/' do
#   @phrases = ["Hi", "bye"]
#   erb(:index)
# end

get '/' do

  return "99 bottles of beer on the wall <a href='98'> Take one down</a>"
end

get "/:num_bottles" do
  num2 = params[:num_bottles]
  if num2 == "0"
    return "NO MORE BOTTLES! <a href='/'> Start over?</a>"
  end
  #  num2 + " bottles of beer on the wall <a href="+(num2.to_i-1).to_s+">Take one down</a>"
  "#{num2} bottles of beer on the wall <a href='/#{(num2.to_i - 1).to_s}'> Take one down</a>"
end
