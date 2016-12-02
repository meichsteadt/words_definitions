require 'sinatra'
require 'sinatra/reloader'
require './lib/word'
require './lib/def'
also_reload 'lib/**/*.rb'

get '/' do
  erb :index
end

get '/words/new' do
  erb :word_form
end
