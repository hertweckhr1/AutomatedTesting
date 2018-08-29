
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    if (1..13).include?(value)
      @value = value
    else
      raise ArgumentError, "Incorrect Value"
    end
    suits = [:diamonds, :hearts, :spades, :clubs]
      if suits.include?(suit)
        @suit = suit.to_sym
      else
        raise ArgumentError, "Incorrect suit"
      end

  end

  def to_s
    if (2..10).include?(value)
      return "#{@value} of #{@suit.to_s}"
    else
      if @value == 1
        name = "Ace"
      elsif @value == 11
        name = "Jack"
      elsif @value == 12
        name = "Queen"
      elsif @value == 13
        name = "King"
      end
      return "#{name} of #{@suit.to_s}"
    end
  end

end
