class Player

attr_reader :name, :hp

ATTACK_POINTS = 10

  def initialize(name, hp = 100)
    @name = name
    @hp = hp
  end

  def damage
    @hp -= 10
  end

end
