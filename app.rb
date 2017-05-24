require 'sinatra/base'


class Battle < Sinatra::Base
  set :session_secret, "super-secret"
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect to '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @player1_life = 100
    @player2_life = 100
    erb :play
  end
end
