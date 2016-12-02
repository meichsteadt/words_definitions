require 'rspec'
require 'pry'
require 'word'
require 'def'

describe 'Word' do
  before :each do
    Word.clear
  end
  describe '.add' do
    it 'will create a Word object' do
      new_word = Word.new({word: 'coder'})
      expect(new_word.add).to eq([new_word])
    end
  end
  describe '#word' do
    it 'will read the word' do
      new_word = Word.new({word: 'coder'})
      expect(new_word.word).to eq('coder')
    end
  end
  describe '#type' do
    it 'will read the type of the word' do
      new_word = Word.new({word: 'coder'})
      expect(new_word.word).to eq('coder')
    end
  end
  describe '.all' do
    it 'will read the words in Word' do
      new_word = Word.new({word: 'coder'})
      new_word.add
      expect(Word.all).to eq([new_word])
    end
  end
  describe '.clear' do
    it 'will clear the words in Word' do
      new_word = Word.new({word: 'coder'})
      new_word.add
      expect(Word.clear).to eq([])
    end
  end
  describe '#add_definition' do
    it 'will add a definition to a word' do
      new_word = Word.new({word: 'coder'})
      expect(new_word.add_definition('someone who does computer sorcery')).to eq(['someone who does computer sorcery'])
    end
  end
  describe '#definitions' do
    it 'will read the definitions of the word' do
      new_word = Word.new({word: 'coder'})
      new_def = Def.new({def: 'someone who does computer sorcery'})
      new_word.add_definition(new_def)
      expect(new_word.definitions).to eq([new_def])
    end
  end
  describe '#id' do
    it 'will read the id of the word' do
      new_word = Word.new({word: 'coder'})
      expect(new_word.id).to eq(1)
    end
  end
end
