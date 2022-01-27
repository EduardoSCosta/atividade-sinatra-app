require 'sinatra'

get '/' do
  "Sinatra app"
end

get '/myprs' do
  erb :my_prs
end
