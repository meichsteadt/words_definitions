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

post '/word' do
  new_word = Word.new(type: params[:type], word: params[:word])
  new_word.add
  @word = new_word
  erb :word_success
end
