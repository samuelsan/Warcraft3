require_relative 'spec_helper'

describe SiegeEngine do

  before :each do
    @footman = Footman.new
    @barracks = Barracks.new
    @siegeengine = SiegeEngine.new
  end

  describe "#damage" do
    it "should deal 100 (double the AP) damage to the Barracks" do
      @siegeengine.attack!(@barracks)
      expect(@barracks.health_points).to eq(400) #initial HP is 500
    end
    it "does not attack Footmen" do
      @siegeengine.attack!(@footman)
      expect(@siegeengine.attack!(@footman)).to be_nil
    end
    it "does not attack Peasants" do
      @siegeengine.attack!(@peasant)
      expect(@siegeengine.attack!(@peasant)).to be_nil
    end
    it "can attack other SeigeEngines" do
      @siegeengine.attack!(@siegeengine)
      expect(@siegeengine.health_points).to eq(350) #initial hp is 500
    end
  end
end

