class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(your_message)
    if your_message.downcase == 'i am going to work right now!'
      return 'Great!'
    elsif your_message.include? '?'
      return 'Silly question, get dressed and go to work!'
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
