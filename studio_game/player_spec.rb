require_relative 'player.rb'

describe 'Player' do

  # Thankfully, Ruby makes that easy by providing access to the standard output stream via the global $stdout variable (global variables always start with $).
  before do
    $stdout = StringIO.new
    @initial_health = 60
    @player = Player.new('larry', @initial_health)
  end

  it "has a capitalized title" do
    @player.name.should == 'Larry'
  end

  it "has an initial health" do
    @player.health.should == 60
  end

  it "has a string representation" do
    @player.to_s.should == "I'm Larry with a health of 60 and a score of 65."
  end

  it "computes a score as the sum of its health and length of name" do
    @player.score.should == 60 + 5
  end

  it "increased health by 15 when w00ted" do
    @player.w00t

    @player.health.should == @initial_health + 15
  end

  it "decreased health by 10 when blammed" do
    @player.blam

    @player.health.should == @initial_health - 10
  end

  context "created with a default health" do

    it "has a health of 100" do
      @player = Player.new('larry')

      @player.health.should == 100
    end
  end
end
