require 'player'

describe Player do

subject(:bob) { Player.new( "Bob" ) }
let(:attack_hit)  {Player::DEFAULT_HIT_POINTS}
  describe "#name" do
    it "returns the name" do
    expect(bob.name).to eq "Bob"
    end
  end

  describe "#hit_points" do
    it "starts with the default hit points" do
      expect(bob.hit_points).to eq attack_hit
    end
  end

end
