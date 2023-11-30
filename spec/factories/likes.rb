# spec/factories/likes.rb
FactoryBot.define do
  factory :like do
    user
    post

    # Add other attributes as needed
  end
end
