# spec/requests/users_spec.rb
require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /users' do
    it 'returns status code 200 (ok)' do
      get '/users'
      expect(response).to have_http_status(200)
    end

    it 'renders the correct template' do
      get '/users'
      expect(response).to render_template(:index)
    end

    it 'have the content List of all users' do 
      get '/users'
      expect(response.body).to match(/List of all users/)
    end
  end


  describe 'GET /users/:id' do
    let(:user) { create(:user) }

    it 'returns a successful response' do
      get "/users/#{user.id}"
      expect(response).to have_http_status(:ok)
    end

    it 'renders the correct template' do
      get "/users/#{user.id}"
      expect(response).to render_template(:show)
    end

    it 'to have content' do
      get "/users/#{user.id}"
      expect(response.body).to match(/<p>Specific user<\/p>/)
    end
  end

  
end
