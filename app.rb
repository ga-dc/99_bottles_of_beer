require 'sinatra'
require 'sinatra/reloader'
@num_bottles = 99
@message = 'Take one down'

get '/' do
  erb :index
end

get '/bottles/:num_bottles' do
  @next_bottles = params[:num_bottles].to_i - 1
  @num_bottles = params[:num_bottles].to_s
  @message = 'Take one down'
  if @next_bottles == -1
    @num_bottles = 'No '
    @message = ''
  end
  erb :index

end
