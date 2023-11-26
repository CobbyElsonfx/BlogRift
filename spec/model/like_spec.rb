# spec/models/like_spec.rb
require 'rails_helper'

RSpec.describe Like, type: :model do
  let(:user) do
    User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
  end

  let(:post) do
    Post.create(author: user, title: 'Title', text: 'This is my first post')
  end

  it 'updates post likes counter after save' do
    like = Like.create(user:, post:)

    post.reload
    expect(post.likes_counter).to eq(1)
  end
end
