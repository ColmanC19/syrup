class QuestionComment < ApplicationRecord
  belongs_to :question, :user
end
