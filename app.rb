require 'sinatra'
set :session_secret, 'super secret'

get '/' do
    "Hello world!"
end

get '/secret' do
  "Ssshhhhhh please"
end

get '/cat' do
    @generator = ["Amigo", "Oscar", "Viking"].sample
    erb(:index)

end
