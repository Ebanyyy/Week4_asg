#catergory > question > options > answer

# score = 0
# puts "Starting score: #{score}"
# puts " "
require './gkquiz.rb'
require './shapequiz.rb'
require './colourquiz.rb'

class QuizGame
	def initialize
		@topics = {}
	end

	def adding_topic(topic_name, quizzes)
		@topics[topic_name] = quizzes
	end

	def display_topics
		puts "Please choose a quiz topic:"
		@topics.keys.each_with_index do |topic, index|
			puts "#{index + 1}. #{topic}"
		end
	end

	def start_quiz
		puts "*Quiz Game*"
		puts "Enter your name:"
		name = gets.chomp
		puts " "
		puts "Hello #{name}"
		loop do display_topics
			print "Please choose a number of the topic quiz or 'exit' to leave."
			choice = gets.chomp.downcase
			break if choice == 'exit'
			pick_topic(choice)
		end
		puts "Thank you!"
	end

	def choosing_topic(topic_choice)
		topic_index = topic_choice.to_i - 1 
		topic = @topics.keys[topic_index]
		quiz = @topics[topic]

		if quiz
			puts "#{topic} have been selected."
			quiz.run_quiz(questions)
		else
			puts "Topic could not be found."
		end
	end
end

quiz = QuizGame.new
quiz.adding_topic("General Knowledge Quiz", GKQuiz.new)
quiz.adding_topic("Shape Quiz", ShapeQuiz.new)
quiz.adding_topic("Colour Quiz", ColourQuiz.new)

puts quiz.display_topics
puts quiz.start_quiz
