require 'sinatra'
set :session_secret, 'super secret'

get '/' do
    "Hello world!"
end

get '/secret' do
  "Ssshhhhhh please"
end

get '/cat' do
    "<div>
    <img src='https://ichef.bbci.co.uk/news/1024/cpsprodpb/151AB/production/_111434468_gettyimages-1143489763.jpg' style='border: 3px dashed red'>
    </div>"
end