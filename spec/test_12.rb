require_relative 'spec_helper'

describe Unit do 

  before :each do  
    @unit = Unit.new(60, 10)
    @barracks = Barracks.new
  end

  it "should die when it reaches 0 health points" do
    @unit.damage(1000)
    expect(@unit.dead?).to be_truthy
  end

  it "should die when Barracks reaches 0 health points" do
    @unit.damage(1000)
    expect(@unit.dead?).to be_truthy
  end

end
