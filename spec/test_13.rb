require_relative 'spec_helper'

describe Unit do 

  before :each do  
    @unit = Unit.new(60, 10)
    @footman = Footman.new
    @barracks = Barracks.new
    @peasant = Peasant.new
  end

  describe "#attack!" do
    it "does not attack if the enemy is dead" do
      @enemy.should_receive(:dead?).and_return(true)
      expect(@footman.attack!(@enemy)).to be_nil
    end
    it "does not attack if it itself is dead" do
      @footman.should_receive(:dead?).and_return(true)
      expect(@footman.attack!(@enemy)).to be_nil
    end
    it "attacks if neither unit is dead" do
      @enemy = Peasant.new
      @footman.attack!(@enemy)
      expect(@enemy.health_points).to eq(25)
    end
  end
end
 

