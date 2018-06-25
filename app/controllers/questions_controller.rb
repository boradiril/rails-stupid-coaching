class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # display the question asked by the user

    # display the answer of the coach
    # read the question from params and compute an instance variable @answer for the view to display
    #

    # TODO: return coach answer to your_message
    @question = params[:question].to_s
    if @question[-1] == '?'
      @answer = "Silly question, get dressed and go to work!"
    elsif @question.downcase == "I am going to work right now!".downcase
      @answer = ""
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
