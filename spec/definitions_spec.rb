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
#   describe '#add_def' do
#     it 'will add a def to a def' do
#       new_def = Def.new({def: 'coder'})
#       expect(new_def.add_def('someone who does computer sorcery')).to eq(['someone who does computer sorcery'])
#     end
#   end
#   describe '#defs' do
#     it 'will read the defs of the def' do
#       new_def = Def.new({def: 'coder'})
#       new_def.add_def('someone who does computer sorcery')
#       expect(new_def.defs).to eq(['someone who does computer sorcery'])
#     end
#   end
end
