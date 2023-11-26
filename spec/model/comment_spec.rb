# spec/models/comment_spec.rb
require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:user) do
    User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
  end

  let(:post) do
    Post.create(author: user, title: 'Title', text: 'This is my first post')
  end

  it 'updates post comments counter after save' do
    comment = Comment.create(user:, post:, text: 'Hi Tom!')

    post.reload
    expect(post.comments_counter).to eq(1)
  end
end
