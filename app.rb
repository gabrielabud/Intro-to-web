require 'sinatra'

get '/' do
  "Hello"
end

get '/random-cat' do
  @name = ["Amigo","Oscar","Viking"].sample
  erb(:named_cat)
  #erb reads the input file, proccesses ruby that is inside and returns resulting
  #HTML. this HTML is then returned by the block passed to the get() method
end

post '/named-cat' do
  p params
  @name = params[:name]
  @age = params[:age]
  erb(:named_cat)
end

get '/form' do
  erb(:cat_form)
end
