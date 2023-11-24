# db/migrate/20231124074659_create_comments.rb
# Migration to create the comments table.


class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true, index: true
      t.references :post, null: false, foreign_key: true, index: true
      t.text :text

      t.timestamps
    end
  end
end
