class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    if @question == "I am going to work"
      @answer = "Great"
    elsif @question[-1s] # this one also works => @question.include?("?") However, this one will answer even if I have a ? in the beginning
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
