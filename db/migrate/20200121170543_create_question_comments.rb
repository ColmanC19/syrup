class CreateQuestionComments < ActiveRecord::Migration[5.2]
  def change
    create_table :question_comments do |t|
      t.integer :question_id
      t.text :body_text
      t.integer :user_id

      t.timestamps
    end
  end
end
