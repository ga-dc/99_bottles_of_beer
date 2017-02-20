require 'sinatra'
require 'sinatra/reloader'

# # 99 Bottles of Beer
#
# ## Project Specs
#
# - The home page `/` should list:
#   - "99 Bottles of beer on the wall"
#   - add a link to take one down

# counter = 100
#
# get '/' do
#
#   params[:num] = counter.to_i
#   puts "hi"
#   puts params[:num]
#
#   if counter > 0
#     "bye"
#     "#{params[:num]} Bottles of beer on the wall " + "<a href='/#{params[:num].to_i-1}'> Take One Down </a>"
#     counter -= 1
#   else
#     "No bottles of beer on the wall"
#   end
#
# end

get '/:num' do

  if params[:num].to_i>0
  "#{params[:num]} Bottles of beer on the wall " + "<a href='/#{params[:num].to_i-1}'> Take One Down </a>"
  else
  "No bottles of beer on the wall"
  end

end



# - The page `/:num_bottles` should show:
#   - "num_bottles Bottles of beer on the wall"
#   - where `:num_bottles` can be any positive integer.
#   - add a link to take one down
# - The page `/0` should show:
#   - "No Bottles of beer on the wall"
#   - do not show a link to take one down
#   - show a link to start over
#
# ## Bonus
#
# Can you satisfy the above specs by only using a single route?
#
# ## Double Bonus
