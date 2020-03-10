FactoryBot.define do
  factory :comment do
    sequence(:message) { |n| "comment_#{n}" }
    article
    user
  end
end
