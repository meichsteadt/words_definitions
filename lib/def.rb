class Def
  @@defs = []
  def initialize(attributes)
    @type = attributes[:type]
    @def = attributes[:def]
  end
  def add
    @@defs.push(self)
  end
end
