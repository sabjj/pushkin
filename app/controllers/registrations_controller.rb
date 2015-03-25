require 'bot.rb'

class RegistrationsController < ApplicationController
	
	
	skip_before_action :verify_authenticity_token

	def create
		#puts 222222222222222222222222222
		#params.delete(:authenticity_token)
  		#render plain: params.inspect
  		#@questions = "%WORD% солнце знойное сушило,"
  		
  		@questions = params[:question]
		@token = params[:token]
		preparation(@questions.to_s)
		open_file
		@ans = search_word
  		
  		render json: {answer: @ans}
		#puts @question
		#preparation(@questions.to_s)
		#open_file
		#@ans = search_word
		#puts @ans
		#puts @answer

		
  	end

  	
end
