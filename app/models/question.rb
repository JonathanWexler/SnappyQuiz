class Question < ActiveRecord::Base
  attr_accessible :answer, :question

  #! @randquest = @questions[rand(Questions.count)]

end
