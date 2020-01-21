class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  has_many :comments, as: :imageable, dependent: :destroy
  has_many :votes, as: :imageable, dependent: :destroy
  belongs_to :user
end
