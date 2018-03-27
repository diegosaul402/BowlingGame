require 'spec_helper'

describe BowlingKata do
  let(:game)    {BowlingKata.new}
  let(:test_rolls) {[1, 4, 4, 5, 6, 4, 5, 5, 10, 0, 1, 7, 3, 6, 4, 10, 2, 8, 6]}
  it "should return the right result" do
    test_rolls.each {|roll| game.roll(roll)}

    expect(game.score).to eq 133
    byebug
  end

end
