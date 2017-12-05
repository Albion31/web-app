require "sinatra"
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/cat' do
  @name = %w(Amigo Oscar Viking).sample
  erb(:index)
end
