class Team
  attr_accessor :name, :motto
  @@superteam = []

  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
    @@superteam << self
  end

  def self.all
    @@superteam
  end

end
