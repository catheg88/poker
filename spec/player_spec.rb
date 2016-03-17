require "rspec"
require "player"

describe Player do

  let(:player) { Player.new("Matt", 10) }

  describe "setup" do
    describe "#name" do
      it "properly sets name" do
        expect(player.name).to eq("Matt")
      end
    end

    describe "#cards" do
      it "starts with no cards" do
        expect(player.cards).to eq([])
      end
    end

    describe "#chip_count" do
      it "starts with the right number of chips" do
        expect(player.chip_count).to eq(10)
      end
    end

  end

  describe "#clear_cards!" do

    before(:each) do
      player.instance_variable_set(:@cards, [[double, double]])
    end

    it "removes all cards from player" do
      player.clear_cards!
      expect(player.cards).to be_empty
    end
  end

  describe "#get_bet" do

    

  end

end
