# db/migrate/20231124073059_create_posts.rb

# Migration to create the posts table.

# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.references :author, foreign_key: { to_table: :users }, index: true
      t.string :title
      t.text :text
      t.integer :comments_counter
      t.integer :likes_counter

      t.timestamps
    end
  end
end
