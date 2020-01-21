class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  has_many :comments, as: :imageable, dependent: :destroy
  has_many :votes, as: :imageable, dependent: :destroy
end
