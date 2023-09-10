class ShapeQuiz
	attr_accessor :question, :answer 
	def initialize(question, answer)
		@question = question
		@answer = answer
	end
end

question1 = "How many sides does a square have?\n(a) 3\n(b) 6\n(c) 4"
question2 = "What is the shape of an egg?\n(a) square \n(b) oval \n(c) triangle"
question3 = "How many coners does a ball have?\n(a) 0 \n(b) 4\n(c) 5"

question = [
	ShapeQuiz.new(question1, "c"),
	ShapeQuiz.new(question2, "b"),
	ShapeQuiz.new(question3, "a")
]

def run_quiz(questions)
	puts "*Shape Quiz*"
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
