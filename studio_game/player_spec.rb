require_relative 'player.rb'

describe 'Player' do

  # Thankfully, Ruby makes that easy by providing access to the standard output stream via the global $stdout variable (global variables always start with $).
  before do
    $stdout = StringIO.new
  end

  it "has a capitalized title" do
    player = Player.new('larry', 60)

    player.name.should == 'Larry'
  end

  it "has an initial health" do
    player = Player.new('larry', 60)

    player.health.should == 60
  end

  it "has a string representation" do
    player = Player.new('larry', 60)

    player.to_s.should == "I'm Larry with a health of 60 and a score of 65."
  end

  it "computes a score as the sum of its health and length of name" do
    player = Player.new('larry', 60)

    player.score.should == 65
  end

  it "increased health by 15 when w00ted" do
    initial_health = 60
    player = Player.new('larry', initial_health)

    player.w00t

    player.health.should == 75
  end

  it "decreased health by 10 when blammed" do
    initial_health = 60
    player = Player.new('larry', initial_health)

    player.blam

    player.health.should == 50
  end

  context "created with a default health" do

    it "has a health of 100" do
      player = Player.new('larry')

      player.health.should == 100
    end
  end
end
