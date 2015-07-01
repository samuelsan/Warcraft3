# http://classic.battle.net/war3/human/units/footman.shtml
class Footman < Unit   
  def initialize
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
    super(60,10)
  end
  
  def damage(hp)
    super
  end

  def attack!(enemy)
    if enemy.is_a? Barracks
      enemy.damage(@attack_power/2).ceil 
    else
      super(enemy)
    end
  end
end
