# spec/factories/posts.rb
FactoryBot.define do
    factory :post do
      title { 'Sample Post' }
      comments_counter { 0 }
      likes_counter { 0 }
      author
  
      trait :author do
        association :author, factory: :user
      end
    end
  end
  