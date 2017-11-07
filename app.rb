require 'sinatra'

get '/' do
  "Hello"
end

get '/secret' do
  "Hello Marie"
end

get '/cat' do
  erb(:index)
end
