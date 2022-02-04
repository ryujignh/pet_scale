FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "sample#{n}@sample.com" }
    password { "password" }
  end
end
