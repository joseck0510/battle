class Player

DEFAULT_HIT_POINTS = 60
DEFAULT_ATTACK = 10

attr_reader :name
attr_accessor :hit_points

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

  def attacked
    @hit_points -= DEFAULT_ATTACK
  end

end
