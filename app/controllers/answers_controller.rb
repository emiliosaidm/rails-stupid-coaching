class AnswersController < ApplicationController
  def answer
    @answer = getAnswer(params)
  end
  def getAnswer(hash)
    answer = ''
    if hash[:question]
      if hash[:question] == 'I am going to work'
        answer = 'Great!'
      elsif hash[:question][-1] == '?'
        answer = 'Silly question, get dressed and go to work!'
      else
        answer = 'I don\'t care, get dressed and go to work!'
      end
    end
    answer
  end
end
