# db/migrate/20231124073059_create_posts.rb
# db/migrate/20231124074008_create_likes.rb
# db/migrate/20231124074659_create_comments.rb
# db/schema.rb

# frozen_string_literal: true

ActiveRecord::Schema[7.1].define(version: 20_231_124_074_659) do
  enable_extension 'plpgsql'

  create_table 'comments', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.bigint 'post_id', null: false
    t.text 'text'
    t.timestamps null: false
  end

  add_index 'comments', ['post_id'], name: 'index_comments_on_post_id'
  add_index 'comments', ['user_id'], name: 'index_comments_on_user_id'

  create_table 'likes', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.bigint 'post_id', null: false
    t.timestamps null: false
  end

  add_index 'likes', ['post_id'], name: 'index_likes_on_post_id'
  add_index 'likes', ['user_id'], name: 'index_likes_on_user_id'

  create_table 'posts', force: :cascade do |t|
    t.bigint 'author_id'
    t.string 'title'
    t.text 'text'
    t.integer 'comments_counter'
    t.integer 'likes_counter'
    t.timestamps null: false
  end

  add_index 'posts', ['author_id'], name: 'index_posts_on_author_id'

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.string 'photo'
    t.text 'bio'
    t.integer 'posts_counter'
    t.timestamps null: false
  end

  add_index 'users', ['name'], name: 'index_users_on_name'

  add_foreign_key 'comments', 'posts'
  add_foreign_key 'comments', 'users'
  add_foreign_key 'likes', 'posts'
  add_foreign_key 'likes', 'users'
  add_foreign_key 'posts', 'users', column: 'author_id'
end
