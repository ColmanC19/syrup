class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.string :direction
      t.references :imageable, polymorphic: true
      t.timestamps
    end
  end
end
