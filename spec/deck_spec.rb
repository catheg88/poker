require 'rspec'
require 'deck'
require 'byebug'

describe Deck do
  subject(:deck) { Deck.new }
  let(:cards_count) { deck.instance_variable_get(:@cards).size }
  describe '#new'
    it 'initializes with 52 cards' do
      expect(cards_count).to eq(52)
    end

    it 'has 13 card of each suit' do
      counts = Hash.new { 0 }
      deck.instance_variable_get(:@cards).each do |card|
        counts[card.suit] += 1
      end
      expect(counts).to eq({0 => 13, 1 => 13, 2 => 13, 3 => 13 })
    end

    it 'has 4 of each value'


  describe '#shuffle'
    it 'shuffles randomly on initialize' do
      first_deck = Deck.new
      first_deck_cards = first_deck.instance_variable_get(:@cards)
      second_deck = Deck.new
      second_deck_cards = second_deck.instance_variable_get(:@cards)
      expect(first_deck_cards).to_not eq(second_deck_cards)
    end

  describe '#draw!'
    it 'draws a card' do
      expect(deck.draw!.first).to be_a(Card)
    end

    it 'draws 1 card by default' do
      expect(deck.draw!.length).to eq(1)
    end

    it 'takes an argument and draws that many cards' do
      expect(deck.draw!(2).length).to eq(2)
    end

    it 'removes cards that are drawn' do
      deck.draw!
      expect(deck.instance_variable_get(:@cards).length).to_not eq(52)
    end

end
