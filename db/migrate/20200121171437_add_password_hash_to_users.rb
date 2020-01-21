class AddPasswordHashToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column(:users, :pasword_hash, :string)
    end
end
