require 'sinatra'
set :session_secret, 'super secret'

get '/' do
    "Hello world!"
end

get '/secret' do
  "Ssshhhhhh please"
end

get '/random-cat' do
    @name = ["Amigo", "Oscar", "Viking"].sample
    erb(:index)
end

post '/named-cat' do
    p params
    @name = params[:name]
    erb(:index)
end

get '/form' do
  erb :cat_form
end
