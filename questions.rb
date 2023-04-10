class Question 
  attr_accessor :turn, :num1, :num2, :answer
  def initialize(turn)
    @turn = 3
    @num1 = rand(1..10)
    @num2 = rand(1..10)
    @sum = @num1 + @num2
  end

  def question
    puts "-------New Question---------"
    puts "What does #{num1} + #{num2} equal?"
    print ">"
    answer = $stdin.gets.chomp.to_i

    if answer == @sum
      puts "Correct, #{@sum}, number of lives #{@turn}!"
    else
      @turn -= 1
      puts "Wrong, number of lives #{@turn}"
    end

  end
end