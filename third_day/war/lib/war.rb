class War
  def initialize
    @player_one = Player.new('💩')
    @player_two = Player.new('🐦')
  end

  def play
    while @player_one.cards.count > 0 do
      card_one = @player_one.cards.draw
      card_two = @player_two.cards.draw


      system('clear')
      puts '_' * 20
      print_current_score
      puts '_' * 20
      puts card(card_one, @player_one)
      puts "\t --- VS --- "
      puts card(card_two, @player_two)

      if card_one == card_two
        puts tie # <- Notice that I am calling puts on the 'return value' of this method.
      elsif card_one > card_two
        print_winner(@player_one)
      else
        print_winner(@player_two)
      end

      puts '_' * 20

      sleep 0.5 #Pause between each loop so we can see it
    end

    print_final_score

    if @player_one.score > @player_two.score
      `say #{@player_one} is the winner`
    else
      `say #{@player_two} is the winner`
    end
  end

  private
  def card(number, player)
      puts "
#{player}
          ________
         |{}{}{}{}|_
         |}|#{number}       |
         |{| &&&&&& |
         |}| &*&*&& |
         |{| &&*&*& |
         |}| &&&&&& |
           |_______#{number}|
     "
  end
  def tie
    "\n Tie! - no one wins \n"
  end

  def print_winner(player)
#This method has too many responsibilities, can you name both?
    player.score += 1
    puts "#{player} scored"
  end

  def print_current_score
    puts "#{@player_one} : #{@player_one.score} | #{@player_two} : #{@player_two.score}"
  end

  def print_final_score
    puts "Final Score Is"
    puts "--------------"
    puts "#{@player_one} : #{@player_one.score}"
  end
end
