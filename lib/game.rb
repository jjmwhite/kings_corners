class Game

  @@king_piles = [
    king1: KingPile.new,
    king2: KingPile.new,
    king3: KingPile.new,
    king4: KingPile.new
]

  @@compass = [
    north: Pile.new(@deck.draw(1)),
    east: Pile.new(@deck.draw(1)),
    south: Pile.new(@deck.draw(1)),
    west: Pile.new(@deck.draw(1))
  ]

  def initialize
    @deck = Deck.new
  end

  def play_turn(hand)
    until #no valid moves left
      hand.each do |card|
        if card.value == :king
          self.king_piles.each do |pile|
            if pile.bottom_card.nil?
              

    end
  end


end