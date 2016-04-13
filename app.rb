require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @num_bottles = 99
  @message = 'Take one down'
  @next_bottles = '98'
  erb :index
end

get '/bottles/:num_bottles' do
  @next_bottles = params[:num_bottles].to_i - 1
  @num_bottles = params[:num_bottles].to_s
  @message = 'Take one down'
  if @next_bottles == -1
    @next_bottles = '99'
    @num_bottles = 'No '
    @message = 'Start over?'
  end
  erb :index

end
