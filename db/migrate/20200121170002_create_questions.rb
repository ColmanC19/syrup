class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.text :body_text
      t.string :title

      t.timestamps
    end
  end
end
