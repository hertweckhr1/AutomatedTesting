
require_relative 'spec_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do
    before do
      # can put a number of cards here with different variables.
      @my_card = Card.new(2, :clubs)
      @second_card = Card.new(12, :hearts)
    end

    it "to_s returns a readable String value logically for values 2-10" do
      expect(@my_card.to_s).must_equal '2 of clubs'
      # Test to ensure that to_s works for cards values 2-10
      # for example:  "2 of diamonds"
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # should do test for each of these values, Ace, Jack, Queen, King
      # second_card = Card.new(12, :hearts)

      expect(@second_card.to_s).must_equal "Queen of hearts"
      # Test to ensure that to_s works for cards values 1, and 11-13
      # For example: "Queen of hearts"
    end
  end

  describe "Reader methods" do

    it "Can retrieve the value of the card using a `.value`." do
      face_card = Card.new(13, :diamonds)
      number_card = Card.new(2, :clubs)

      expect(face_card.value).must_equal 13
      expect(number_card.value).must_equal 2
      # ensure that `.value works as expected`
    end

    it "Can retrieve the value of the card using a `.suit`." do
      face_card = Card.new(13, :diamonds)
      number_card = Card.new(2, :clubs)

      expect(face_card.suit).must_equal :diamonds
      expect(number_card.suit).must_equal :clubs
      # ensure that `.suit works as expected returning the symbol of the suit`

    end
  end

end
