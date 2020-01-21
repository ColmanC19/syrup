class AddForeignKeyForAnswerComments < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :answer_comments, :answers
    add_foreign_key :answer_comments, :users
  end
end
