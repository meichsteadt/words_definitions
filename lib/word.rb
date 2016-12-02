class Word
  @@words = []
  def initialize(attributes)
    @word = attributes[:word]
  end
  def add
    @@words.push(self)
  end
end
