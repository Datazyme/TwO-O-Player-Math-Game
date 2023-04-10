class Player
  attr_reader :name, :lives
  def initialize(name)
    @name = name
    @lives = 3 
  end

  def take_life
    @lives -= 1
  end

  def is_dead
    @lives == 0
  end

  def new_question
    new_question = Question.new
    new_question.ask_question(name)
    print '> '
    answer = $stdin.gets.chomp
    if new_question.check_answer?(answer.to_i)
      puts "Correct. The answer is #{new_question.answer}"
    else
      puts "Incorrect. The answer is #{new_question.answer}."
      take_life
    end
  end
end