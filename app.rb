require 'sinatra'
require 'sinatra/reloader'
require './lib/word'
require './lib/def'
require 'pry'
also_reload 'lib/**/*.rb'
@@times = 0
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

get '/words/:id' do
  @word = Word.find(params[:id].to_i)
  erb :word
end

get '/words/:id/new' do
  @word = Word.find(params[:id].to_i)
  binding.pry
  erb :def_form
end

get '/words/:id/mult' do
  @word = Word.find(params[:id].to_i)
  erb :def_form
end
