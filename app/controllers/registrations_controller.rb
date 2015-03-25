require 'bot.rb'

class RegistrationsController < ApplicationController
	
	
	skip_before_action :verify_authenticity_token

	def create

  		@questions = params[:question]
		@token = params[:token]
		preparation(@questions.to_s)
		open_file
		@ans = search_word
  		#render json: {answer: 'мглою'}
  		render json: {answer: @ans.to_s}
		
  	end

  	def show
  		
  	end
  	
end
