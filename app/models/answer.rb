class Answer < ApplicationRecord
  belongs_to :question, :user
end
