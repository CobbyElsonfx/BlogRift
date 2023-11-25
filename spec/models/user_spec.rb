# spec/models/user_spec.rb
require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:photo) }
    it { should validate_presence_of(:bio) }
    it { should validate_numericality_of(:posts_counter).is_greater_than_or_equal_to(0) }
  end

  describe '#recent_posts' do
    let(:user) { create(:user) }

    it 'returns the 3 most recent posts for a given user' do
      recent_posts = create_list(:post, 5, author: user)
      expect(user.recent_posts(3)).to eq(recent_posts.last(3).reverse)
    end
  end
end
