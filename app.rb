require 'sinatra'
require 'sinatra/reloader'

get "/" do
  "99 bottles of beer on the wall. <a href='/bottles/98'>Take one Down</a>"
end

get "/bottles/:num" do
  num = params[:num].to_i
  if num == 0
    "No bottles of beer on the wall. <a href='/bottles/99'>Start Over</a>"
  else
    "#{num} bottles of beer on the wall. <a href='/bottles/#{num-1}'>Take one Down</a>"
  end
end