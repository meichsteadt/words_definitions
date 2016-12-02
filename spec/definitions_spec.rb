require 'rspec'
require 'pry'
require 'def'

describe 'Definition' do
  describe '.add' do
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
  describe '.all' do
    it 'will read the definitions in Def' do
      new_def = Def.new({type: 'noun', def: 'someone who does computer sorcery'})
      new_def.add
      expect(new_def.all).to eq([new_def])
    end
  end
end
