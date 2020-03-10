FactoryBot.define do
  factory :article do
    sequence(:title) { |n| "title_#{n}" }
    content { 'This is content' }
    user
  end
end
