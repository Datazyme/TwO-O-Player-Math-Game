require './game'
require './player'
require './questions'
require 'pp'

abcd = Player.new("abcd")
puts abcd.name
puts abcd.lives

sadf = Question.new("sadf")
puts sadf.question
puts abcd.lives
#game = Game.new
#game.start