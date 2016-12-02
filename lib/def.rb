class Def
  @@defs = []
  attr_reader(:type, :def, :word_id)
  def initialize(attributes)
    @type = attributes[:type]
    @def = attributes[:def]
    @word_id = attributes[:word_id]
    @id = @@defs.length + 1
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
end
