require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  let(:user) { create(:user) }
  let(:post) { create(:post, author: user) }
  # spec/requests/posts_spec.rb
  describe 'GET users/:user_id/posts' do
    it 'returns status code 200 (ok)' do
      get user_posts_path(user)
      expect(response).to have_http_status(200)
    end

    it 'renders the correct template' do
      get user_posts_path(user)
      expect(response).to render_template(:index)
    end

    it 'has the content List of posts' do
      get user_posts_path(user)
      expect(response.body).to include('List of posts')
    end
  end

  describe 'GET users/:user_id/posts/:id' do
    it 'returns a successful response' do
      get user_post_path(user, post)
      expect(response).to have_http_status(:ok)
    end

    it 'renders the correct template' do
      get user_post_path(user, post)
      expect(response).to render_template(:show)
    end

    it 'has content Specific post' do
      get user_post_path(user, post)
      expect(response.body).to include('Specific post')
    end
  end
end
