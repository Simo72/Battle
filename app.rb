require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  set :session_secret, "super-secret"
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    p params, params[:player1]
    $player_1 = Player.new(params[:player1])
    $player_2 = Player.new(params[:player2])
    p $player_1
    p $player_2
    redirect to '/play'
  end

  get '/play' do
    p $player_1
    @player1 = $player_1
    @player2 = $player_2
    @player1_life = 100
    @player2_life = 100
    erb :play
  end

  get '/attack' do
    @player1 = $player_1
    @player2 = $player_2
    erb :attack
  end
end
