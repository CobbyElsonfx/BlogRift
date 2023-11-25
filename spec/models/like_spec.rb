# spec/models/like_spec.rb
require 'rails_helper'

RSpec.describe Like, type: :model do
  describe '#update_likes_counter' do
    let(:user) { create(:user) }
    let(:post) { create(:post) }
    let(:like) { create(:like, user:, post:) }

    it 'updates the likes counter for a post' do
      expect { like.update_likes_counter }.to change { post.reload.likes_counter }.by(1)
    end
  end
end
