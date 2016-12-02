class Word
  @@words = []
  attr_reader(:word)
  def initialize(attributes)
    @word = attributes[:word]
  end
  def add
    @@words.push(self)
  end
end
