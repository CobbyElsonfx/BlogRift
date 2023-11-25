# spec/models/comment_spec.rb
require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe '#update_comments_counter' do
    let(:user) { create(:user) }
    let(:post) { create(:post) }
    let(:comment) { create(:comment, user:, post:) }

    it 'updates the comments counter for a post' do
      expect { comment.update_comments_counter }.to change { post.reload.comments_counter }.by(1)
    end
  end
end
