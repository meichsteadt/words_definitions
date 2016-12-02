require 'rspec'
require 'pry'
require 'def'

describe 'Definition' do
  before :each do
    Def.clear
  end
  describe '#add' do
    it 'will create a Definition object' do
      new_def = Def.new({type: 'noun', def: 'someone who does computer sorcery'})
      expect(new_def.add).to eq([new_def])
    end
  end
  describe '#def' do
    it 'will read the def' do
      new_def = Def.new({def: 'someone who does computer sorcery'})
      expect(new_def.def).to eq('someone who does computer sorcery')
    end
  end
  describe '#type' do
    it 'will read the type' do
      new_def = Def.new({type: 'noun', def: 'someone who does computer sorcery'})
      expect(new_def.type).to eq('noun')
    end
  end
  describe '#id' do
    it 'will read the id of the def' do
      new_def = Def.new({def: 'coder'})
      expect(new_def.id).to eq(1)
    end
  end
  describe '#word_id' do
    it 'will read the id of the word' do
      new_def = Def.new({def: 'someone who does computer sorcery', word_id: 1})
      expect(new_def.word_id).to eq(1)
    end
  end
  describe '.clear' do
    it 'will clear the definitions in Def' do
      new_def = Def.new({type: 'noun', def: 'someone who does computer sorcery'})
      new_def.add
      expect(Def.clear).to eq([])
    end
  end
  describe '.all' do
    it 'will read the definitions in Def' do
      new_def = Def.new({type: 'noun', def: 'someone who does computer sorcery'})
      new_def.add
      expect(Def.all).to eq([new_def])
    end
  end
end
