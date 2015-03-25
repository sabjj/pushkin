
#class Bot

	def initialize()
		@file = []
		@reply = []
		@answer = []
	end


	def preparation(question)
		@q = question.split
		@word_index = @q.index("%WORD%")
		@q.delete_at(@word_index)
	end

	def open_file(name = 'pars.txt')
		File.open(name).each {|line| @file<<line}
  end

 	def search_word
		@file.each do |line|
			@reply = line.to_s if line.include?@q[@word_index-1]
		end
		@answer = @reply.split[@word_index]
	end

#end


		
