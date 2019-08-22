require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  PLAYER1HP = 50
  PLAYER2HP = 50
  PLAYER1HPMIN = 0
  PLAYER2HPMIN = 0
  get '/' do
    'Testing infrastructure working'
  end

  get '/names' do
    erb(:index)
  end

  post '/names' do
   session[:player1] = params[:player1]
   session[:player2] = params[:player2]
   redirect '/play'
  end

  get '/play' do
    
    @player1 = session[:player1]
    @player2 = session[:player2]
    @p1hp = PLAYER1HP
    @p2hp = PLAYER2HP

    erb(:play)
  end

  get '/p1attack' do

  end

  post '/p1attack' do

  end

  get '/p2attack' do

  end

  post '/p1attack' do

  end

  run! if app_file == $0
end
