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

  get '/output' do
    erb :'output.html'
  end

  get '/output.json' do
    content_type :json
    FizzBuzz.new(params[:amount]).as_json
  end

  get '/api' do
    erb :'api.html'
  end
end
