require 'sinatra'

cats = []
get '/cats' do
  @cats = cats
  erb :cats
end

get '/cats/new' do
  erb :new
end

post '/cats' do
  cats << params["name"]
  redirect '/cats'
end
