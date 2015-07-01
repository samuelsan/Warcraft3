class Barracks
  
  attr_accessor :gold, :food, :health_points
  
  def initialize(gold = 1000, food = 80, health_points = 500)
    @gold = gold
    @food = food 
    @health_points = health_points

  end
  
  def can_train_footman?
    gold >= 135 && food >= 2
  end

  def train_footman(gold = 135, food = 2)
    if can_train_footman?
      @gold -= gold
      @food -= food
     Footman.new
    end
  end

  def can_train_peasant?
    gold >= 90 && food >= 5
  end

  def train_peasant(gold = 90, food = 5)
    if can_train_peasant?
      @gold -= gold
      @food -= food
    Peasant.new
    end
  end

  def damage(hp)
    @health_points -= hp
  end

end
