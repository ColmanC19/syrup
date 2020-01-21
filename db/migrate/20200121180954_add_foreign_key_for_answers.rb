class AddForeignKeyForAnswers < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :answers, :questions
    add_foreign_key :answers, :users 
  end
end
