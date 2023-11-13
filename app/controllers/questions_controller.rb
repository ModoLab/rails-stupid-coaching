class QuestionsController < ApplicationController


  def ask
  end

  def answer
    @ask = params[:ask]
    @answer = coach_answer(@ask)
  end

  def coach_answer(ask)
    if ask == "I am going to work"
       "Great!"
    elsif ask.end_with?('?')
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

end
