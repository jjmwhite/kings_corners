class Hand

  #class factory method to create a hand
  def self.make_hand(deck)
    Hand.new(deck.take(7))
  end

  #initialize
  def initialize(cards)
    @hand = cards
  end

  def count
    @hand.length
  end

  #empty?
  def empty?
    return true if count == 0
  end




end