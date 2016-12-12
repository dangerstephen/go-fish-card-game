

class PlayingCard

  attr_reader :rank, :suit, :face

  def initialize(card)
    @rank = card[:rank]
    @suit = card[:suit]
    @face = @rank + @suit
  end

    def to_s
      @face
    end
end


class CardDeck

  attr_reader :cards

  def initialize(boolean=true)
   @cards = []
  #  @hands=[]

       ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
       suits = ["C", "D", "H", "S"]

       ranks.each do |rank|
         suits.each do |suit|
           @cards.push ( PlayingCard.new(rank: rank, suit: suit) )

       end
     end
 end

  # def cards
  #   @cards =Array.new(52, PlayingCard)
  # end

    def shuffle
      @cards.shuffle!
    end

    def draw(n=1)
      @hands=[]

      if n > @cards.length
        @cards.length.times do
          last_card = @cards.pop
          @hands.push(last_card)
        end
      else  n.times do
        last_card = @cards.pop
      @hands.push(last_card)
    end
  end
    @hands
    end

  def draw_one
    @cards.pop
  end

  def push(*card)
    @cards.push(*card)
  end

end

class HandOfCards
  # initialize
end

class CardPlayer
  # initialize
end


# Driver Code
if __FILE__ == $0
  puts "This will only print if you run `ruby go_fish.rb`"


  # deck = CardDeck.new
  # # # puts "cards: #{deck.cards}"
  # # # puts "cards: #{deck}"
  # # # puts "shuffled: #{deck.shuffle}"
  # # puts "one drawn card: #{deck.draw_one}"
  # # puts "two drawn cards: #{deck.draw(2)}"

  # cards1 = deck.draw(5)
  # cards2 = deck.draw(5)
  # # # puts "cards1: #{cards1.join(" ")}"
  # # # puts "cards2: #{cards2.join(" ")}"

  # h1 = HandOfCards.new(cards1)
  # h2 = HandOfCards.new(cards2)

  # puts "hand1: #{h1}"
  # puts "hand2: #{h2}"

  # p1 = CardPlayer.new(hand: h1)
  # p2 = CardPlayer.new(hand: HandOfCards.new(deck.draw(5)) )

  # puts "Hands: [ #{p1.hand} ], [ #{p2.hand} ] (before)"

  # ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  # ranks.each do |rank|
  #   print "p1, do you have any... #{rank}'s?"
  #   if p1.hand.any?(rank: rank)
  #     cards = p1.hand.take!(rank: rank)
  #     print " -- YES: [ #{ cards.join(" ") } ]\n"
  #     p2.hand.push(*cards)
  #     break
  #   end
  #   print " -- NO!\n"
  # end

  # puts "Hands: [ #{p1.hand} ], [ #{p2.hand} ] (after)"
end
