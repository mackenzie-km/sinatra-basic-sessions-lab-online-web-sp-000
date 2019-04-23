require_relative 'config/environment'

class App < Sinatra::Base

  get '/index' do
    erb :'views/index.erb'
  end

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  post '/checkout' do
    session["item"] = params[:item]
    @session = session
    erb :cart
  end

end
