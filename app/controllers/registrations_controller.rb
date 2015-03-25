require 'bot.rb'

class RegistrationsController < ApplicationController
	
	
	skip_before_action :verify_authenticity_token

	def create
		#puts 222222222222222222222222222
		#params.delete(:authenticity_token)
  		#render plain: params.inspect
  		
  		@questions = params[:question]
		@token = params[:token]
		#puts @question
		#preparation(@questions.to_s)
		#open_file
		#@ans = search_word
		#puts @ans
		#puts @answer

		
  	end

  	def show
  		#@questions = "Буря %WORD% небо кроет, Вихри снежные крутя"
  		preparation(@questions.to_s)
		open_file
		@ans = search_word
  		
  		render json: {answer: @ans.to_s}
  	end
end
