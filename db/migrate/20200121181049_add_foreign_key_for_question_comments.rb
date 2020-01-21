class AddForeignKeyForQuestionComments < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :question_comments, :questions
    add_foreign_key :question_comments, :users
  end
end
