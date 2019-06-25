require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/super_hero' do
      @team = Team.new(params[:team])

      params[:team][:members].each do |superhero|
        SuperHero.new(superhero)
      end

      @super_hero = SuperHero.all

      erb :team

    end
end
