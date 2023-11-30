# spec/factories/comments.rb
FactoryBot.define do
  factory :comment do
    user
    post
    text { 'Sample Comment' }

    # Add other attributes as needed
  end
end
