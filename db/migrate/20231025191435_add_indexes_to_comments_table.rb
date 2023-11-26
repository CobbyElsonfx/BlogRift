class AddIndexesToCommentsTable < ActiveRecord::Migration[7.1]
  def change
    add_index :comments, :user_id unless index_exists?(:comments, :user_id)

    return if index_exists?(:comments, :post_id)

    add_index :comments, :post_id
  end
end
