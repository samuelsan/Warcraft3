class Barracks 
  
  attr_accessor :gold, :food, :health_points, :lumber

  def initialize(gold = 1000, food = 80, health_points = 500, lumber = 500)
    @gold = gold
    @food = food 
    @health_points = health_points
    @lumber = lumber
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

  def dead?
    @health_points <= 0
  end

  def can_train_siege_engine?
    gold >= 200 && lumber >= 60 && food >= 3
  end

  def train_siege_engine(lumber = 60, food = 3, gold = 200)
    if can_train_siege_engine?
      @gold -= gold
      @food -= food
      @lumber -= lumber
      SiegeEngine.new
    end
  end

end
