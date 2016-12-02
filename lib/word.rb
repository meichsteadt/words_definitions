class Word
  @@words = []
  attr_reader(:word)
  def initialize(attributes)
    @word = attributes[:word]
    @definitions = []
  end
  def add
    @@words.push(self)
  end
  def add_definition(definition)
    @definitions.push(definition)
  end
  def definitions
    @definitions
  end
  def self.all
    @@words
  end
  def self.clear
    @@words = []
  end
end
