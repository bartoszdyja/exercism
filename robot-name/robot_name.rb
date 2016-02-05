class Robot
  attr_accessor :name

  def initialize
    @name = set_name
  end

  def set_name
    ('A'..'Z').to_a.shuffle[0,2].join+rand(100..999).to_s
  end

  def reset
    self.name = set_name
  end
end
