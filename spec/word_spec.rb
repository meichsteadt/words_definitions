require 'rspec'
require 'pry'
require 'word'

describe 'Word' do
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
  describe '#add_definition' do
    it 'will add a definition to a word' do
      new_word = Word.new({word: 'coder'})
      expect(new_word.add_definition('someone who does computer sorcery')).to eq(['someone who does computer sorcery'])
    end
  end
  describe '#definitions' do
    it 'will read the definitions of the word' do
      new_word = Word.new({word: 'coder'})
      new_word.add_definition('someone who does computer sorcery')
      expect(new_word.definitions).to eq(['someone who does computer sorcery'])
    end
  end
end
