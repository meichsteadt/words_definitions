require 'sinatra'
require 'sinatra/reloader'
require './lib/word'
require './lib/def'
require 'pry'
also_reload 'lib/**/*.rb'

get '/' do
  erb :index
end

get '/words/new' do
  erb :word_form
end

post '/word' do
  new_word = Word.new(word: params[:word])
  new_word.add
  @word = new_word
  erb :word_success
end

get '/words' do
  @words = Word.all
  erb :words
end
