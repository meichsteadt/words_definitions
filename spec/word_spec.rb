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
end
