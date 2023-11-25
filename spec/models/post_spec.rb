# spec/models/post_spec.rb
require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:text) }
    it { should validate_length_of(:title).is_at_most(250) }
    it { should validate_numericality_of(:comments_counter).is_greater_than_or_equal_to(0) }
    it { should validate_numericality_of(:likes_counter).is_greater_than_or_equal_to(0) }
  end

  describe '#recent_comments' do
    let(:post) { create(:post) }

    it 'returns the 5 most recent comments for a given post' do
      recent_comments = create_list(:comment, 7, post:)
      expect(post.recent_comments(5)).to eq(recent_comments.last(5).reverse)
    end
  end

  describe '#update_posts_counter' do
    let(:user) { create(:user) }
    let(:post) { create(:post, author: user) }

    it 'updates the posts counter for a user' do
      expect { post.update_posts_counter }.to change { user.reload.posts_counter }.by(1)
    end
  end
end
