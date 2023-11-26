class AddIndexesToLikesTable < ActiveRecord::Migration[7.1]
  def change
    add_index :likes, :user_id unless index_exists?(:likes, :user_id)
    return if index_exists?(:likes, :post_id)

    add_index :likes, :post_id
  end
end
