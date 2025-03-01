class AddIndexToUsersEmail < ActiveRecord::Migration[7.2]
  # def change
  # add_index :users, :email, unique: true
  # end

  def up
    add_index :users, :email, unique: true
  end

  def down
    # Safely remove the index only if it exists
    if index_exists?(:users, :email, unique: true)
      remove_index :users, :email
    end
  end
end
