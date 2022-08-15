class QuestionsController < ApplicationController
  def question
  end

  def answer
    @response = params[:response]

    if @response == 'I am going to work.'
      @result = 'Great!'
    elsif @response.include? '?'
      @result = 'Silly question, get dressed and go to work!'
    else
      @result = "I don't care, get dressed and go to work!"
    end
  end
end
