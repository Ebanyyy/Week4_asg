class GKQuiz
	attr_accessor :question, :answer 
	def initialize(question, answer)
		@question = question
		@answer = answer
	end
end

question1 = "What is the capital of Japan?\n(a) Tokyo\n(b) Kyoto\n(c) Osaka"
question2 = "Who painted the Mona Lisa?\n(a) Pablo Picasso\n(b) Vincent van Gogh\n(c) Leonardo da Vinci"
question3 = "Which gas do plants absorb from the atmosphere?\n(a) Oxygeb\n(b) Carbon dioxide\n(c) Hydrogen"

question = [
	GKQuiz.new(question1, "a"),
	GKQuiz.new(question2, "c"),
	GKQuiz.new(question3, "b")
]

def run_quiz(questions)
	puts "*General Knowledge Quiz*"
	puts " "
	answer = ""
	score = 0
	for question in questions
		puts question.question
		answer = gets.chomp()
		if answer == question.answer
			score += 1 
		end
	end
	puts ("Score " + score.to_s + "/"+ questions.length.to_s)
end

run_quiz(question)