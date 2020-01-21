class CreateAnswerComments < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_comments do |t|
      t.integer :answer_id
      t.text :body_text
      t.integer :user_id

      t.timestamps
    end
  end
end
