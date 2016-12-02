class Def
  @@defs = []
  attr_reader(:type, :def)
  def initialize(attributes)
    @type = attributes[:type]
    @def = attributes[:def]
    @id = @@defs.length + 1
    @word_id = ""
  end
  def add
    @@defs.push(self)
  end
  def self.all
    @@defs
  end
  def self.clear
    @@defs = []
  end
  def id
    @id
  end
  def word_id
    @word_id
  end
end
