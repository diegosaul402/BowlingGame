require 'spec_helper'

describe BowlingKata do
  let(:game)    {BowlingKata.new}
  let(:test_rolls4) {[10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]}
  it "should work on proposed case" do
    test_rolls = [1, 4, 4, 5, 6, 4, 5, 5, 10, 0, 1, 7, 3, 6, 4, 10, 2, 8, 6]
    test_rolls.each {|roll| game.roll(roll)}
    expect(game.score).to eq 133
  end

  it "should work on only zero" do
    test_rolls = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    test_rolls.each {|roll| game.roll(roll)}
    expect(game.score).to eq 0
  end

  it "should work on only ones" do
    test_rolls = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    test_rolls.each {|roll| game.roll(roll)}
    expect(game.score).to eq 20
  end
  it "should rwork on all strikes" do
    test_rolls = [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]
    test_rolls.each {|roll| game.roll(roll)}
    expect(game.score).to eq 300
  end
end
