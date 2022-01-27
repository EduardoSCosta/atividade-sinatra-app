require 'sinatra'

get '/' do
  "Hello world!"
end

get '/myprs' do
  erb :my_prs
end
