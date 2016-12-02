class Word
  @@words = []
  attr_reader(:word)
  def initialize(attributes)
    @word = attributes[:word]
    @definitions = []
    @id = @@words.length + 1
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
  def id
    @id
  end
  def self.all
    @@words
  end
  def self.clear
    @@words = []
  end
  def self.find(id)
    found_word = nil
    @@words.each {|word| word.id == id ? found_word = word : false}
    found_word
  end
end
