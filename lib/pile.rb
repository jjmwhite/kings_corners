class Pile

  attr_reader :bottom_card, :top_card
  
  def initialize(bottom_card)
    @bottom_card = bottom_card
  end

  def top_card
    @top_card ||= @bottom_card
  end

  #if 

  def valid_play?(card)
    raise "Kings must be plaed on King piles" if card.value == :king
    return false unless @top_card.step_down == card && card.color != @top_card.color
  end

  def valid_king_play?
    return false 
  end

  # check if card is valid play
  def play_card

  end

  def play_king

  end
  
end

class KingPile < Pile

  attr_reader :bottom_card, :top_card
  
  def initialize(bottom_card)
    raise "Card must be a King" unless bottom_card.value == :King
    @bottom_card
  end


end

end



    # @center_deck = deck
    
    # piles = Array.new(4) { [] }
    # piles.each do |pile|
    #   pile << deck.take(1)
    # end

    # @compass = piles
    # @kings = Array.new(4) { [] }