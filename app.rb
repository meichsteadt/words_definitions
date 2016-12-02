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
  new_word = Word.new(word: params[:word], type: params[:type])
  new_word.add
  @word = new_word
  erb :word_success
end

get '/clear' do
  Word.clear
  @words = Word.all
  erb :words
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
  erb :def_form
end

post '/def' do
  @word = Word.find(params[:id].to_i)
  new_def = Def.new({def: params[:def]})
  new_def.add
  @word.add_definition(new_def)
  erb :def_success
end

get '/a_z' do
  @words = Word.all
  @words.sort_by! { |word| word.word }
  erb :words
end

get '/z_a' do
  @words = Word.all
  @words.sort_by! { |word| word.word }
  @words.reverse!
  erb :words
end

get '/all' do
  @words = Word.all
  erb :all
end

get '/all/a_z' do
  @words = Word.all
  @words.sort_by! { |word| word.word }
  erb :all
end

get '/all/z_a' do
  @words = Word.all
  @words.sort_by! { |word| word.word }
  @words.reverse!
  erb :all
end
