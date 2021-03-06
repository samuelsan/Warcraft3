require_relative 'spec_helper'

# Units that can fight, such as the Footman, have both health points to indicate their health and attack power to indicate how much damage they deal to other units
# As such, they must start off with a certain amount of each

describe Barracks do

  before :each do
    @barracks = Barracks.new
    @footman = Footman.new
  end
  
  it "has and knows its health points" do
    expect(@barracks.health_points).to eq(500)
  end


  describe "#damage" do
    it "should deal 5 (AP) damage to the Barracks" do
      @footman.attack!(@barracks)
      expect(@barracks.health_points).to eq(495) #initial HP is 500
    end
  end

end