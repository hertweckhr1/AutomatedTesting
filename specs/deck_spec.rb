

require_relative 'spec_helper'

describe Deck do
  before do
    @deck = Deck.new

  end

  describe "You can create a Deck instance" do

    it "can be created" do
    @deck = Deck.new
    expect(@deck).must_be_instance_of Deck
    end

    it "contains all 52 cards" do
      expect(@deck.cards.length).must_equal 52
    end
  end

  describe "ensures shuffle method is used" do
    it "must include metthod shuffle" do
      expect(@deck.shuffle).wont_equal @deck
    end

  end

  describe "draw card method works" do

    it "reduces cards array by 1 when card is drawn" do
      @deck.draw
      expect(@deck.count).must_equal 51
    end
  end

  describe "count method works" do
    it "counts correctly" do
      @cards = Array.new(6)
      expect(@cards.count).must_equal 6
    end
  end

  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases

end
