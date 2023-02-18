class Game

	def initialize
    @player1 = Players.new
    @player2 = Players.new
    @current_player = @player1
  end

  def play_game

    #keep looping as long as none of the players have 0 lives
    while @player1.lives != 0 && @player2.lives != 0
      #make the question and ask player
      question = Questions.new
      question.ask_question(@current_player)

      #show player score/stats
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      
      #check the players' lives to see if any of them reached 0
      if @player1.lives == 0 || @player2.lives == 0
      #announce the winner and their scores
        if @player1.lives == 0
          puts "Player 2 wins with a score of #{@player2.lives}/3"
        else
          puts "Player 1 wins with a score of #{@player1.lives}/3"
        end
        puts "----- GAME OVER -----"
        puts "Good bye!"
      end

      #switch turns
      if @current_player = @player1 
        @current_player = @player2
      else
        @current_player = @player1
      end

      #start new turn message
      puts "----- NEW TURN -----"

    end
  end
end