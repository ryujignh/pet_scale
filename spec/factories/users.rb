FactoryBot.define do
  factory :user do
    id { 1 }
    email { "sample@sample.com" }
    password { "password" }
  end
end
