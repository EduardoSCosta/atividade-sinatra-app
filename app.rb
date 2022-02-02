require 'sinatra'

get '/' do
  erb :about_me
end

get '/my_prs' do
  erb :my_prs
end

get '/final_paper' do
  erb :final_paper
end
