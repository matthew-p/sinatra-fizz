require "sinatra/base"
require 'slim'
require './lib/fizz_buzz.rb'


class App < Sinatra::Base
  get '/' do
    erb :'index.html'
  end

  post '/output' do
    erb :'output.html'

  end
end
