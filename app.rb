require "sinatra"
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/random-cat' do
  @name = %w(Amigo Oscar Viking).sample
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end

post '/named-cat' do
  p params
  @name = params[:name]
  @color = params[:color]
  @adorable = params[:adorable]
  erb(:index)
end
