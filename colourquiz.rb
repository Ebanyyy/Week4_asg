class ColourQuiz
	attr_accessor :question, :answer 
	def initialize(question, answer)
		@question = question
		@answer = answer
	end
end

question1 = "How many colors does a rainbow have?\n(a) 3\n(b) 7\n(c) 5"
question2 = "What is the colour of an orange?\n(a) orange\n(b) purple\n(c) yellow"
question3 = "What is the colour of a kiwi?\n(a) blue\n(b) red\n(c) green"

question = [
	ColourQuiz.new(question1, "b"),
	ColourQuiz.new(question2, "a"),
	ColourQuiz.new(question3, "c")
]

def run_quiz(questions)
	puts "*Colour Quiz*"
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

# run_quiz(question)
