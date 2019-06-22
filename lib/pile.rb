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
    raise "Kings must be placed on King piles" if card.value == :king
    return false unless @top_card.step_down == card && card.color != @top_card.color
  end

  def play_card(card)
    @top_card = card if valid_play?(card)
  end

  
end

class KingPile < Pile
  
  def initialize(bottom_card = nil)
    raise "Card must be a King" unless bottom_card.value == :King
    super(bottom_card = nil)
  end

  def play_card
    
  end

  def valid_play?(card)
    if @bottom_card.nil?
      raise "Only Kings may be placed on King piles" card.value != :king
      return true
    else 
      return true if @top_card.step_down == card && card.color != @top_card.color
    end
    false 
  end

  def play_card(card)
    if 
    @bottom_card = card if valid_king_play?(card)
      
    end
  end


end