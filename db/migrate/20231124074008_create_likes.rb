# db/migrate/20231124072204_create_likes.rb
# db/migrate/20231124074008_create_likes.rb

# Migration to create the likes table.

class CreateLikes < ActiveRecord::Migration[7.1]
  def change
    create_table :likes do |t|
      t.references :user, null: false, foreign_key: true, index: true
      t.references :post, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
