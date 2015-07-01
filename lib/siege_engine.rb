class SiegeEngine < Unit

  def initialize 
    super(400,50)
  end

  def dead?
    super
  end

  def attack!(enemy)
    if enemy.is_a? Barracks
     2.times { super(enemy)} 
    elsif enemy.is_a? SiegeEngine
      super(enemy) 
    end
  end
end
