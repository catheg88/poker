require_relative "card"

class Deck
  def self.build_deck
    deck = []
    (1..13).each do |val|
      (0..3).each do |suit|
        deck << Card.new(val, suit)
      end
    end
    deck
  end

  def initialize
    @cards = Deck.build_deck
  end

  def draw!(count = 1)
    @cards.pop(count)
  end
end
