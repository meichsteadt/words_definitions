class Def
  @@defs = []
  def initialize(attributes)
    @type = attributes[:type]
    @def = attributes[:def]
  end
  def add
    @@defs.push(self)
  end
  def def
    @def
  end
  def self.all
    @@defs
  end
  def self.clear
    @@defs = []
  end
end
