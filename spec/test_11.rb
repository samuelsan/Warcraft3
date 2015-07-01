require_relative 'spec_helper'

# Units that can fight, such as the Footman, have both health points to indicate their health and attack power to indicate how much damage they deal to other units
# As such, they must start off with a certain amount of each

describe Barracks do

  before :each do
    @footman = Footman.new
  end

  it "should do deal 5 (AP) damage to the Barrack" do
    enemy = Barracks.new
    @footman.attack!(enemy)
    expect(enemy.health_points).to eq(495)   #TODO
  end
end