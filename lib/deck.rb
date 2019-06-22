require_relative "card"
class Deck

  attr_reader :cards

  #factory method to fill deck with unique cards
  def self.deck_assembly
    deck = []

    Card.suits.each do |suit|
      Card.values.each do |value|
        deck << Card.new(suit, value)
      end
    end
    deck
  end

  def initialize(deck = Deck.deck_assembly)
    @cards = deck.shuffle!

  end

  def count
    @cards.length
  end

  #draw from front
  def draw(n)
    raise "not enough cards" if count < n
    @cards.shift(n)
  end

  #return to end
  def return(cards)
    @cards.push(*cards)
  end

  def empty?
    count == 0
  end


end