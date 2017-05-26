require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    # $player_1 = Player.new(params[:player1])
    # $player_2 = Player.new(params[:player2])
    $game = Game.new(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect to '/play'
  end

  get '/play' do
    @game = $game
    @player1 = @game.player1
    @player2 = @game.player2
    erb :play
  end

  get '/attack' do
    @game = $game
    @player1 = @game.player1
    @player2 = @game.player2
    @game.attack(@player2)
    erb :attack
  end
end
