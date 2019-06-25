class Superhero
  attr_accessor :name, :power, :bio
  @@supers = []

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    @@supers << self
  end

  def self.all
    @@supers
  end

end
