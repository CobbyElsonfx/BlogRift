# frozen_string_literal: true

# db/migrate/20231124071918_create_users.rb
class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :photo
      t.text :bio
      t.integer :posts_counter

      t.index :name
      t.timestamps
    end
  end
end
