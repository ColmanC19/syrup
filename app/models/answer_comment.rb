class AnswerComment < ApplicationRecord
  belongs_to :answer, :user
end
