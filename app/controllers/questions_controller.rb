class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]
    stop_message = 'I am going to work'
    @coach_response = ''

    if @answer == stop_message || stop_message.upcase
      @coach_response = 'Great!'
    elsif @answer.end_with('?')
      @coach_response = 'Silly question, get dressed and go to work!'
    else
      @coach_response = "I don't care, get dressed and go to work!"
    end
  end
end
