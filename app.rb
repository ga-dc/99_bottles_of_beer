require 'sinatra'
require 'sinatra/reloader'

get "/" do
  @bottles = 99
  erb(:index)
end

get "/:num_bottles" do
  @num_bottles = params[:num_bottles].to_i
  @lessbottles = @num_bottles - 1
  if params[:num_bottles].to_i > 0
      erb(:num_bottles)
    else
      erb(:empty)
    end
end
