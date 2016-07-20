require 'player'

describe Player do

subject(:bob) { Player.new( "Bob" ) }

  describe "#name" do
    it "returns the name" do
    expect(bob.name).to eq "Bob"
    end
  end

  describe "#hit_points" do
    it "starts with the default hit points" do
      expect(bob.hit_points).to eq Player::DEFAULT_HIT_POINTS
    end
  end

  describe "#attack" do
    it "reduces the players hit_points by the default value" do
      expect{ bob.attacked }.to change{bob.hit_points}.by(-Player::DEFAULT_ATTACK)
    end
  end

end
