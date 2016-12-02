class Def
  @@defs = []
  attr_reader(:type, :def)
  def initialize(attributes)
    @type = attributes[:type]
    @def = attributes[:def]
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
end
