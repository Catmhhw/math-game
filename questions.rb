class Questions

	attr_reader :answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def ask_question(player)
    puts "#{player}: What does #{@num1} plus #{@num2} equal?"
    player_answer = gets.chomp.to_i
    if player_answer != @answer
      puts "#{player}: Seriously? No!"
			player.lose_life
		else
      puts "#{player}: YES! You are correct."
    end
  end

end