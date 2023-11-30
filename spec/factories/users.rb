# spec/factories/users.rb
FactoryBot.define do
  factory :user do
    name { 'John Doe' }
    post_counter { 0 }

    # Add other attributes as needed
  end
end
